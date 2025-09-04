# Lab 13 - 分秒計時器

## 實驗目標

使用VHDL製作七段顯示器，完成一個分秒正數計時器
1. 請將初始時間訂為58.57(58分57秒)
2. 當分或秒數值為59，下次觸發進位顯示00，並繼續循環。
3. 例如：59.59➔00.00➔00.01...

## 功能描述

**分秒計時器 (Minute-Second Timer)** 是一個雙位數的時間顯示系統，使用四個七段顯示器來顯示分鐘和秒鐘，實現從指定時間開始的正數計時功能。

### 顯示格式

```
顯示器配置:
[分鐘十位] [分鐘個位] . [秒鐘十位] [秒鐘個位]

範例:
58.57 → 58分57秒
00.00 → 00分00秒
```

## 設計規格

### 輸入信號

```vhdl
clk         : in  std_logic;                    -- 系統時脈 (50MHz)
reset       : in  std_logic;                    -- 重置信號 (低電位有效)
enable      : in  std_logic;                    -- 計時器致能
load        : in  std_logic;                    -- 時間載入控制
load_min    : in  std_logic_vector(7 downto 0); -- 載入分鐘值 (BCD)
load_sec    : in  std_logic_vector(7 downto 0); -- 載入秒鐘值 (BCD)
```

### 輸出信號

```vhdl
hex0        : out std_logic_vector(6 downto 0); -- 秒鐘個位數七段顯示
hex1        : out std_logic_vector(6 downto 0); -- 秒鐘十位數七段顯示
hex2        : out std_logic_vector(6 downto 0); -- 分鐘個位數七段顯示
hex3        : out std_logic_vector(6 downto 0); -- 分鐘十位數七段顯示
minute_out  : out std_logic_vector(7 downto 0); -- 分鐘輸出 (BCD)
second_out  : out std_logic_vector(7 downto 0); -- 秒鐘輸出 (BCD)
overflow    : out std_logic;                    -- 溢位指示 (59:59→00:00)
```

### 時間範圍

- **分鐘範圍**: 00 ～ 59
- **秒鐘範圍**: 00 ～ 59
- **總週期**: 3600 秒 (60分鐘)
- **初始值**: 58:57

## VHDL 實作架構

### 1. 實體宣告

```vhdl
entity timer_ms is
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        enable      : in  std_logic;
        load        : in  std_logic;
        load_min    : in  std_logic_vector(7 downto 0);
        load_sec    : in  std_logic_vector(7 downto 0);
        hex0        : out std_logic_vector(6 downto 0);
        hex1        : out std_logic_vector(6 downto 0);
        hex2        : out std_logic_vector(6 downto 0);
        hex3        : out std_logic_vector(6 downto 0);
        minute_out  : out std_logic_vector(7 downto 0);
        second_out  : out std_logic_vector(7 downto 0);
        overflow    : out std_logic
    );
end timer_ms;
```

### 2. 一秒時脈產生器

```vhdl
entity clock_1hz is
    port (
        clk_50mhz   : in  std_logic;
        reset       : in  std_logic;
        enable      : in  std_logic;
        clk_1hz     : out std_logic
    );
end clock_1hz;

architecture behavioral of clock_1hz is
    signal counter : unsigned(25 downto 0);
    constant COUNT_MAX : unsigned(25 downto 0) := to_unsigned(50000000-1, 26); -- 1秒
begin
    process(clk_50mhz, reset)
    begin
        if reset = '0' then
            counter <= (others => '0');
            clk_1hz <= '0';
        elsif rising_edge(clk_50mhz) then
            if enable = '1' then
                if counter = COUNT_MAX then
                    counter <= (others => '0');
                    clk_1hz <= '1';
                else
                    counter <= counter + 1;
                    clk_1hz <= '0';
                end if;
            else
                clk_1hz <= '0';
            end if;
        end if;
    end process;
end behavioral;
```

### 3. BCD計數器

```vhdl
entity bcd_counter_60 is
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        enable      : in  std_logic;
        load        : in  std_logic;
        load_value  : in  std_logic_vector(7 downto 0);
        count_out   : out std_logic_vector(7 downto 0);
        carry_out   : out std_logic
    );
end bcd_counter_60;

architecture behavioral of bcd_counter_60 is
    signal tens, units : std_logic_vector(3 downto 0);
    signal count_reg : std_logic_vector(7 downto 0);
begin
    tens <= count_reg(7 downto 4);
    units <= count_reg(3 downto 0);
    
    process(clk, reset)
    begin
        if reset = '0' then
            count_reg <= "01011001"; -- 初始值 59 (用於除錯)
        elsif rising_edge(clk) then
            if load = '1' then
                count_reg <= load_value;
            elsif enable = '1' then
                if count_reg = "01011001" then -- 59 BCD
                    count_reg <= "00000000";   -- 回到 00
                else
                    -- BCD遞增邏輯
                    if units = "1001" then     -- 個位數為9
                        count_reg(3 downto 0) <= "0000";
                        if tens = "0101" then  -- 十位數為5
                            count_reg(7 downto 4) <= "0000";
                        else
                            count_reg(7 downto 4) <= std_logic_vector(unsigned(tens) + 1);
                        end if;
                    else
                        count_reg(3 downto 0) <= std_logic_vector(unsigned(units) + 1);
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    count_out <= count_reg;
    carry_out <= '1' when count_reg = "01011001" and enable = '1' else '0';
end behavioral;
```

### 4. 七段顯示解碼器

```vhdl
entity seg7_decoder is
    port (
        bcd_in  : in  std_logic_vector(3 downto 0);
        seg_out : out std_logic_vector(6 downto 0)
    );
end seg7_decoder;

architecture behavioral of seg7_decoder is
begin
    process(bcd_in)
    begin
        case bcd_in is
            when "0000" => seg_out <= "1000000"; -- 0
            when "0001" => seg_out <= "1111001"; -- 1
            when "0010" => seg_out <= "0100100"; -- 2
            when "0011" => seg_out <= "0110000"; -- 3
            when "0100" => seg_out <= "0011001"; -- 4
            when "0101" => seg_out <= "0010010"; -- 5
            when "0110" => seg_out <= "0000010"; -- 6
            when "0111" => seg_out <= "1111000"; -- 7
            when "1000" => seg_out <= "0000000"; -- 8
            when "1001" => seg_out <= "0010000"; -- 9
            when others => seg_out <= "1111111"; -- 熄滅
        end case;
    end process;
end behavioral;
```

### 5. 頂層模組整合

```vhdl
architecture structural of timer_ms is
    component clock_1hz ... end component;
    component bcd_counter_60 ... end component;
    component seg7_decoder ... end component;
    
    signal clk_1s : std_logic;
    signal sec_count, min_count : std_logic_vector(7 downto 0);
    signal sec_carry : std_logic;
    signal min_load, sec_load : std_logic;
begin
    -- 一秒時脈產生器
    CLK_GEN: clock_1hz
        port map (clk, reset, enable, clk_1s);
    
    -- 秒鐘計數器 (初始值 57)
    SEC_COUNTER: bcd_counter_60
        port map (
            clk => clk,
            reset => reset,
            enable => clk_1s,
            load => (load or reset),
            load_value => "01010111" when reset = '0' else load_sec, -- 57
            count_out => sec_count,
            carry_out => sec_carry
        );
    
    -- 分鐘計數器 (初始值 58)
    MIN_COUNTER: bcd_counter_60
        port map (
            clk => clk,
            reset => reset,
            enable => sec_carry,
            load => (load or reset),
            load_value => "01011000" when reset = '0' else load_min, -- 58
            count_out => min_count,
            carry_out => overflow
        );
    
    -- 七段顯示器解碼
    SEG_SEC_UNITS: seg7_decoder port map (sec_count(3 downto 0), hex0);
    SEG_SEC_TENS:  seg7_decoder port map (sec_count(7 downto 4), hex1);
    SEG_MIN_UNITS: seg7_decoder port map (min_count(3 downto 0), hex2);
    SEG_MIN_TENS:  seg7_decoder port map (min_count(7 downto 4), hex3);
    
    -- 輸出分配
    minute_out <= min_count;
    second_out <= sec_count;
end structural;
```

## 檔案結構

```
lab13/
├── README.md                  # 本說明文件
├── src/                      # 源碼檔案
│   ├── timer_ms.vhd              # 頂層計時器模組
│   ├── clock_1hz.vhd             # 一秒時脈產生器
│   ├── bcd_counter_60.vhd        # BCD 60模計數器
│   ├── seg7_decoder.vhd          # 七段顯示解碼器
│   └── timer_ms_tb.vhd           # Testbench
├── *.qpf                     # Quartus 專案檔
├── simulation/               # 模擬檔案
│   ├── wave.do                  # 波形設定
│   ├── timer_test.do            # 計時器測試腳本
│   └── display_test.do          # 顯示測試腳本
└── docs/                    # 說明文件
    ├── seven_segment.png        # 七段顯示器編碼表
    ├── timing_diagram.png       # 時序圖
    └── bcd_encoding.pdf         # BCD編碼說明
```

## 測試與驗證

### 測試案例

1. **初始值測試**
   ```vhdl
   -- 驗證重置後顯示 58:57
   reset <= '0';
   wait for 100 ns;
   reset <= '1';
   wait for 1000 ns;
   assert minute_out = "01011000" report "初始分鐘錯誤";
   assert second_out = "01010111" report "初始秒鐘錯誤";
   ```

2. **計數功能測試**
   ```vhdl
   -- 測試從 58:57 開始計數
   enable <= '1';
   wait for 1 sec;  -- 58:58
   wait for 1 sec;  -- 58:59
   wait for 1 sec;  -- 59:00
   wait for 59 sec; -- 59:59
   wait for 1 sec;  -- 00:00 (溢位)
   ```

3. **七段顯示測試**
   ```vhdl
   -- 測試所有數字的顯示編碼
   for i in 0 to 9 loop
       bcd_input <= std_logic_vector(to_unsigned(i, 4));
       wait for 10 ns;
       -- 驗證七段編碼正確性
   end loop;
   ```

4. **載入功能測試**
   ```vhdl
   -- 測試自定義時間載入
   load <= '1';
   load_min <= "00101001"; -- 29
   load_sec <= "00110101"; -- 35
   wait for 20 ns;
   load <= '0';
   -- 驗證載入值正確性
   ```

### 波形分析

```
時脈信號:
clk_50mhz  ___^^^^____^^^^____^^^^____
clk_1hz    _________^^^^________________

計數器輸出:
second_out 57 → 58 → 59 → 00 → 01 → ...
minute_out 58 → 58 → 58 → 59 → 59 → ...

七段顯示:
hex0       (7) → (8) → (9) → (0) → (1) → ...
hex1       (5) → (5) → (5) → (0) → (0) → ...
```

## 學習重點

- 七段顯示器的編碼原理與驅動方法
- BCD計數器的設計與級聯技術
- 時脈分頻在計時系統中的應用
- 模組化設計與系統整合方法
- 實時計時系統的設計考量

### 3. 智慧功能
- **自動校時**: GPS/網路校時
- **溫度顯示**: 環境監測
- **省電模式**: 電池優化
- **記憶功能**: 時間記錄保存
