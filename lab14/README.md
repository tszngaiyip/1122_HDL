# Lab 14 - 0-99計數器 / 0-99 Counter

## 實驗目標 / Objective

使用VHDL製作七段顯示器，完成一個計數器
1. 範圍為 0 ~ 99
2. 當值為 99，下次觸發進位顯示 00，並繼續循環。
3. 例如：99➔00➔01...

Design a seven-segment display using VHDL to implement a counter
1. Range from 0 to 99
2. When value reaches 99, next trigger shows 00 and continues cycling
3. Example: 99➔00➔01...

## 功能描述 / Functionality Description

**0-99計數器** 是一個雙位數的十進制計數器，使用兩個七段顯示器顯示計數值，實現從0到99的循環計數功能。

The 0-99 counter is a dual-digit decimal counter using two seven-segment displays to show count values, implementing cyclic counting from 0 to 99.

### 計數特性 / Counting Characteristics

- **計數範圍 / Count Range**: 0 ～ 99 (十進制)
- **循環特性 / Cyclic Nature**: 99 → 00 自動回零
- **BCD編碼 / BCD Encoding**: 十位數和個位數分別編碼
- **可控速度 / Variable Speed**: 可調節計數頻率

## 設計規格 / Design Specifications

### 輸入信號 / Input Signals

```vhdl
clk         : in  std_logic;                    -- 系統時脈 (50MHz)
reset       : in  std_logic;                    -- 重置信號 (低電位有效)
enable      : in  std_logic;                    -- 計數器致能
load        : in  std_logic;                    -- 載入控制
load_value  : in  std_logic_vector(7 downto 0); -- 載入值 (BCD格式)
count_up    : in  std_logic;                    -- 計數方向 (1:上數, 0:下數)
speed_sel   : in  std_logic_vector(1 downto 0); -- 計數速度選擇
```

### 輸出信號 / Output Signals

```vhdl
hex0        : out std_logic_vector(6 downto 0); -- 個位數七段顯示
hex1        : out std_logic_vector(6 downto 0); -- 十位數七段顯示
count_out   : out std_logic_vector(7 downto 0); -- BCD計數輸出
overflow    : out std_logic;                    -- 溢位指示 (99→00 或 00→99)
underflow   : out std_logic;                    -- 下溢指示 (00→99)
```

### 速度控制 / Speed Control

| speed_sel | 計數頻率 / Count Frequency | 週期時間 / Period Time |
|-----------|---------------------------|----------------------|
| 00        | 1 Hz                      | 1 秒 / 1 second     |
| 01        | 10 Hz                     | 0.1 秒 / 0.1 seconds |
| 10        | 100 Hz                    | 0.01 秒 / 0.01 seconds |
| 11        | 1000 Hz                   | 0.001 秒 / 0.001 seconds |

## VHDL 實作架構 / VHDL Implementation Architecture

### 1. 實體宣告 / Entity Declaration

```vhdl
entity counter_99 is
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        enable      : in  std_logic;
        load        : in  std_logic;
        load_value  : in  std_logic_vector(7 downto 0);
        count_up    : in  std_logic;
        speed_sel   : in  std_logic_vector(1 downto 0);
        hex0        : out std_logic_vector(6 downto 0);
        hex1        : out std_logic_vector(6 downto 0);
        count_out   : out std_logic_vector(7 downto 0);
        overflow    : out std_logic;
        underflow   : out std_logic
    );
end counter_99;
```

### 2. 時脈分頻器 / Clock Divider

```vhdl
entity clock_divider is
    port (
        clk_in      : in  std_logic;
        reset       : in  std_logic;
        speed_sel   : in  std_logic_vector(1 downto 0);
        clk_out     : out std_logic
    );
end clock_divider;

architecture behavioral of clock_divider is
    signal counter : unsigned(25 downto 0);
    signal div_limit : unsigned(25 downto 0);
begin
    -- 分頻比選擇 / Division ratio selection
    with speed_sel select
        div_limit <= to_unsigned(50000000-1, 26) when "00",  -- 1 Hz
                    to_unsigned(5000000-1, 26)  when "01",  -- 10 Hz
                    to_unsigned(500000-1, 26)   when "10",  -- 100 Hz
                    to_unsigned(50000-1, 26)    when "11",  -- 1000 Hz
                    to_unsigned(5000000-1, 26)  when others;
    
    process(clk_in, reset)
    begin
        if reset = '0' then
            counter <= (others => '0');
            clk_out <= '0';
        elsif rising_edge(clk_in) then
            if counter = div_limit then
                counter <= (others => '0');
                clk_out <= '1';
            else
                counter <= counter + 1;
                clk_out <= '0';
            end if;
        end if;
    end process;
end behavioral;
```

### 3. BCD計數器核心 / BCD Counter Core

```vhdl
entity bcd_counter_core is
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        enable      : in  std_logic;
        load        : in  std_logic;
        load_value  : in  std_logic_vector(7 downto 0);
        count_up    : in  std_logic;
        count_out   : out std_logic_vector(7 downto 0);
        overflow    : out std_logic;
        underflow   : out std_logic
    );
end bcd_counter_core;

architecture behavioral of bcd_counter_core is
    signal tens, units : std_logic_vector(3 downto 0);
    signal count_reg : std_logic_vector(7 downto 0);
begin
    tens <= count_reg(7 downto 4);
    units <= count_reg(3 downto 0);
    
    process(clk, reset)
    begin
        if reset = '0' then
            count_reg <= "00000000"; -- 重置為 00
        elsif rising_edge(clk) then
            if load = '1' then
                count_reg <= load_value;
            elsif enable = '1' then
                if count_up = '1' then
                    -- 上數邏輯 / Up counting logic
                    if count_reg = "10011001" then -- 99 BCD
                        count_reg <= "00000000";     -- 回到 00
                    else
                        -- BCD遞增 / BCD increment
                        if units = "1001" then       -- 個位數為 9
                            count_reg(3 downto 0) <= "0000";
                            count_reg(7 downto 4) <= std_logic_vector(unsigned(tens) + 1);
                        else
                            count_reg(3 downto 0) <= std_logic_vector(unsigned(units) + 1);
                        end if;
                    end if;
                else
                    -- 下數邏輯 / Down counting logic
                    if count_reg = "00000000" then  -- 00 BCD
                        count_reg <= "10011001";     -- 回到 99
                    else
                        -- BCD遞減 / BCD decrement
                        if units = "0000" then       -- 個位數為 0
                            count_reg(3 downto 0) <= "1001";
                            count_reg(7 downto 4) <= std_logic_vector(unsigned(tens) - 1);
                        else
                            count_reg(3 downto 0) <= std_logic_vector(unsigned(units) - 1);
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    count_out <= count_reg;
    overflow <= '1' when (count_reg = "10011001" and enable = '1' and count_up = '1') else '0';
    underflow <= '1' when (count_reg = "00000000" and enable = '1' and count_up = '0') else '0';
end behavioral;
```

### 4. 七段顯示解碼器 / Seven-Segment Decoder

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
            --         gfedcba
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
            when others => seg_out <= "1111111"; -- 熄滅 / Off
        end case;
    end process;
end behavioral;
```

### 5. 頂層模組整合 / Top-level Module Integration

```vhdl
architecture structural of counter_99 is
    component clock_divider ... end component;
    component bcd_counter_core ... end component;
    component seg7_decoder ... end component;
    
    signal count_clk : std_logic;
    signal count_internal : std_logic_vector(7 downto 0);
begin
    -- 時脈分頻器實例化
    CLK_DIV: clock_divider
        port map (clk, reset, speed_sel, count_clk);
    
    -- BCD計數器核心實例化
    COUNTER_CORE: bcd_counter_core
        port map (
            clk => clk,
            reset => reset,
            enable => (enable and count_clk),
            load => load,
            load_value => load_value,
            count_up => count_up,
            count_out => count_internal,
            overflow => overflow,
            underflow => underflow
        );
    
    -- 七段顯示器解碼
    SEG_UNITS: seg7_decoder 
        port map (count_internal(3 downto 0), hex0);
    
    SEG_TENS: seg7_decoder 
        port map (count_internal(7 downto 4), hex1);
    
    -- 輸出分配
    count_out <= count_internal;
end structural;
```

## 檔案結構 / File Structure

```
lab14/
├── README.md                  # 本說明文件 / This README
├── src/                      # 源碼檔案 / Source files
│   ├── counter_99.vhd            # 頂層計數器模組
│   ├── clock_divider.vhd         # 時脈分頻器
│   ├── bcd_counter_core.vhd      # BCD計數器核心
│   ├── seg7_decoder.vhd          # 七段顯示解碼器
│   └── counter_99_tb.vhd         # Testbench
├── *.qpf                     # Quartus 專案檔
├── simulation/               # 模擬檔案
│   ├── wave.do                  # 波形設定
│   ├── count_test.do            # 計數測試腳本
│   ├── display_test.do          # 顯示測試腳本
│   └── overflow_test.do         # 溢位測試腳本
└── docs/                    # 說明文件
    ├── seven_segment_map.png    # 七段顯示器接腳圖
    ├── bcd_truth_table.pdf      # BCD真值表
    └── timing_analysis.png      # 時序分析圖
```

## 測試與驗證 / Testing and Verification

### 綜合測試案例 / Comprehensive Test Cases

1. **基本計數測試 / Basic Counting Test**
   ```vhdl
   -- 測試 0-99 完整計數循環
   reset <= '0'; wait for 50 ns; reset <= '1';
   enable <= '1';
   count_up <= '1';
   speed_sel <= "10"; -- 100 Hz 快速測試
   
   for i in 0 to 105 loop -- 測試超過一個循環
       wait until rising_edge(count_clk);
       -- 驗證計數值正確性
   end loop;
   ```

2. **反向計數測試 / Reverse Counting Test**
   ```vhdl
   -- 測試 99-0 下數循環
   load <= '1';
   load_value <= "10011001"; -- 載入 99
   wait for 20 ns;
   load <= '0';
   count_up <= '0'; -- 下數模式
   
   for i in 99 downto -5 loop -- 測試下溢
       wait until rising_edge(count_clk);
       -- 驗證下數正確性
   end loop;
   ```

3. **速度切換測試 / Speed Switching Test**
   ```vhdl
   -- 測試不同計數速度
   for speed in 0 to 3 loop
       speed_sel <= std_logic_vector(to_unsigned(speed, 2));
       wait for 10 * count_period(speed);
       -- 驗證頻率正確性
   end loop;
   ```

4. **邊界條件測試 / Boundary Condition Test**
   ```vhdl
   -- 測試 98→99→00 轉換
   load <= '1';
   load_value <= "10011000"; -- 載入 98
   wait for 20 ns;
   load <= '0';
   
   wait until overflow = '1'; -- 等待溢位
   assert count_out = "00000000" report "溢位後未正確歸零";
   ```

### 七段顯示驗證 / Seven-Segment Display Verification

```vhdl
-- 驗證所有數字顯示正確
procedure verify_display(
    digit : in integer;
    expected_hex0, expected_hex1 : in std_logic_vector(6 downto 0)
) is
begin
    load <= '1';
    load_value <= std_logic_vector(to_unsigned(digit/10, 4)) & 
                  std_logic_vector(to_unsigned(digit mod 10, 4));
    wait for 20 ns;
    load <= '0';
    wait for 20 ns;
    
    assert hex0 = expected_hex0 report "個位數顯示錯誤";
    assert hex1 = expected_hex1 report "十位數顯示錯誤";
end procedure;

-- 測試所有數字 0-99
for i in 0 to 99 loop
    verify_display(i, digit_to_7seg(i mod 10), digit_to_7seg(i/10));
end loop;
```

## 學習重點 / Key Learning Points

- 雙位數BCD計數器的設計原理
- 七段顯示器的多路復用技術
- 可變速度計數系統的實作
- 上下數計數邏輯的設計差異
- 溢位和下溢檢測機制

- Design principles of dual-digit BCD counters
- Multiplexing techniques for seven-segment displays
- Implementation of variable speed counting systems
- Design differences between up and down counting logic
- Overflow and underflow detection mechanisms

## 應用領域 / Application Areas

### 數位顯示應用 / Digital Display Applications
- **計數顯示器 / Count Displays**: 生產計數、人流統計
- **得分板 / Scoreboards**: 運動比賽、遊戲計分
- **樓層顯示 / Floor Indicators**: 電梯樓層顯示
- **數量顯示 / Quantity Displays**: 庫存、產量顯示

### 工業控制應用 / Industrial Control Applications
- **生產線計數 / Production Line Counting**: 產品計數
- **品質檢測 / Quality Control**: 良品/不良品統計
- **設備監控 / Equipment Monitoring**: 運行次數記錄
- **維護提醒 / Maintenance Reminder**: 週期計數器

## 進階功能擴展 / Advanced Feature Extensions

### 1. 多位數擴展 / Multi-digit Extension
```vhdl
-- 擴展為 4位數計數器 (0000-9999)
entity counter_9999 is
    port (
        -- 基本信號 + 4個七段顯示器
        hex0, hex1, hex2, hex3 : out std_logic_vector(6 downto 0);
        count_out : out std_logic_vector(15 downto 0); -- 4位BCD
        -- 其他信號...
    );
end counter_9999;
```

### 2. 預設值功能 / Preset Value Function
```vhdl
-- 支援多組預設計數值
preset_sel : in std_logic_vector(1 downto 0);
preset_load : in std_logic;

-- 預設值選擇
with preset_sel select
    preset_value <= "00000000" when "00", -- 00
                   "00010000" when "01", -- 10
                   "01010000" when "10", -- 50
                   "10011001" when "11", -- 99
                   "00000000" when others;
```

### 3. 計數模式擴展 / Counting Mode Extension
```vhdl
-- 支援多種計數模式
count_mode : in std_logic_vector(1 downto 0);

-- 計數模式定義
-- "00": 正常循環 (0-99-0)
-- "01": 往返計數 (0-99-0)
-- "10": 單次計數 (停止於99)
-- "11": 隨機計數 (偽隨機序列)
```

### 4. 通信介面 / Communication Interface
```vhdl
-- 串列通信介面
serial_data_in  : in  std_logic;
serial_data_out : out std_logic;
serial_clk      : in  std_logic;
serial_enable   : in  std_logic;

-- 支援命令
-- 設定計數值、讀取計數值
-- 控制計數方向、速度
-- 查詢狀態、重置計數器
```

## 故障診斷與除錯 / Troubleshooting and Debugging

### 常見問題 / Common Issues

1. **顯示閃爍 / Display Flickering**
   - 原因：時脈頻率過高或不穩定
   - 解決：檢查分頻器設計，確保穩定的顯示更新頻率

2. **計數跳躍 / Count Skipping**
   - 原因：邊緣檢測問題或時序違規
   - 解決：添加適當的同步邏輯和時序約束

3. **BCD編碼錯誤 / BCD Encoding Error**
   - 原因：進位邏輯錯誤
   - 解決：驗證個位數9→0和十位數進位邏輯

4. **溢位檢測失效 / Overflow Detection Failure**
   - 原因：條件判斷邏輯錯誤
   - 解決：檢查邊界值檢測的時序和條件

### 除錯工具 / Debugging Tools

- **SignalTap II**: 在線邏輯分析器
- **ModelSim**: 時序模擬驗證
- **Quartus TimeQuest**: 時序分析工具
- **示波器 / Oscilloscope**: 硬體信號驗證