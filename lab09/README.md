# Lab 09 - 60模計數器

## 實驗目標

使用VHDL製作非同步清除同步載入60模計數器，並製作testbench進行功能驗證

## 功能描述

**60模計數器 (Mod-60 Counter)** 是一個用於計時應用的重要電路，常用於：

- **分鐘計數**: 0-59 分鐘循環
- **秒鐘計數**: 0-59 秒鐘循環  
- **時間基準**: 數位時鐘的基礎組件

### 計數特性

- **計數範圍**: 0 ～ 59 (十進制)
- **循環特性**: 59 → 0 (自動回零)
- **BCD編碼**: 使用BCD格式輸出

## 設計規格

### 輸入信號

```vhdl
clk         : in  std_logic;              -- 時脈信號
reset       : in  std_logic;              -- 非同步清除 (低電位有效)
load        : in  std_logic;              -- 同步載入控制
enable      : in  std_logic;              -- 計數致能
load_value  : in  std_logic_vector(7 downto 0);  -- 載入值 (BCD)
```

### 輸出信號

```vhdl
count_out   : out std_logic_vector(7 downto 0);  -- BCD計數輸出
tc          : out std_logic;              -- 終端計數 (59→0時為高)
```

### BCD 編碼格式

```
count_out(7:4) = 十位數 (0-5)
count_out(3:0) = 個位數 (0-9)

範例:
00 → 0000_0000
09 → 0000_1001  
10 → 0001_0000
59 → 0101_1001
```

## VHDL 實作架構

### 1. 實體宣告

```vhdl
entity mod60_counter is
    port (
        clk        : in  std_logic;
        reset      : in  std_logic;
        load       : in  std_logic;
        enable     : in  std_logic;
        load_value : in  std_logic_vector(7 downto 0);
        count_out  : out std_logic_vector(7 downto 0);
        tc         : out std_logic
    );
end mod60_counter;
```

### 2. 架構實作

```vhdl
architecture behavioral of mod60_counter is
    signal units, tens : std_logic_vector(3 downto 0);
    signal count_reg : std_logic_vector(7 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '0' then  -- 非同步清除
            count_reg <= "00000000";
        elsif rising_edge(clk) then
            if load = '1' then  -- 同步載入
                count_reg <= load_value;
            elsif enable = '1' then  -- 計數致能
                -- BCD 計數邏輯
                if count_reg = "01011001" then  -- 59 in BCD
                    count_reg <= "00000000";     -- 回到 0
                else
                    -- BCD 遞增邏輯
                    if units = "1001" then       -- 個位數為 9
                        units <= "0000";
                        if tens = "0101" then    -- 十位數為 5
                            tens <= "0000";
                        else
                            tens <= tens + 1;
                        end if;
                    else
                        units <= units + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    units <= count_reg(3 downto 0);
    tens <= count_reg(7 downto 4);
    count_out <= count_reg;
    tc <= '1' when count_reg = "01011001" and enable = '1' else '0';
end behavioral;
```

## 功能驗證

### 測試案例設計

#### 1. 基本計數測試
```
初始值: 00 → 01 → 02 → ... → 09 → 10 → ... → 59 → 00
驗證: 連續計數的正確性和循環特性
```

#### 2. 載入功能測試
```
測試載入不同的BCD值:
- 載入 25 (0010_0101)
- 載入 59 (0101_1001)  
- 載入 00 (0000_0000)
```

#### 3. 重置功能測試
```
在不同計數值時測試非同步清除:
- 計數至 30 時重置
- 計數至 59 時重置
- 載入操作期間重置
```

#### 4. 終端計數測試
```
驗證 tc 信號在 59→00 轉換時的正確行為
```

### Testbench 結構

```vhdl
entity mod60_counter_tb is
end mod60_counter_tb;

architecture test of mod60_counter_tb is
    component mod60_counter
        port (
            clk, reset, load, enable : in std_logic;
            load_value : in std_logic_vector(7 downto 0);
            count_out : out std_logic_vector(7 downto 0);
            tc : out std_logic
        );
    end component;
    
    signal clk, reset, load, enable, tc : std_logic;
    signal load_value, count_out : std_logic_vector(7 downto 0);
    constant clk_period : time := 10 ns;
begin
    UUT: mod60_counter port map (clk, reset, load, enable, load_value, count_out, tc);
    
    -- 時脈產生程序
    clk_process: process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;
    
    -- 測試程序
    test_process: process
    begin
        -- 測試案例實作
        wait;
    end process;
end test;
```

## 檔案結構

```
lab09/
├── README.md              # 本說明文件
├── src/                  # 源碼檔案
│   ├── mod60_counter.vhd     # 主要計數器模組
│   └── mod60_counter_tb.vhd  # Testbench 檔案
├── *.qpf                 # Quartus 專案檔
├── simulation/           # 模擬檔案
│   ├── wave.do              # ModelSim 波形設定
│   └── test_cases.txt       # 測試案例記錄
└── docs/                # 說明文件
    ├── timing_diagram.png    # 時序圖
    ├── state_diagram.png     # 狀態圖  
    └── bcd_encoding.pdf      # BCD編碼說明
```

## 學習重點

- BCD (Binary Coded Decimal) 編碼原理
- 模數計數器的設計方法
- 同步載入與非同步清除的實作
- 終端計數信號的產生技術
- 時間相關電路的設計考量

## 應用領域

- **數位時鐘**: 分秒計時器
- **計時器**: 倒數計時功能
- **頻率分頻**: 60Hz → 1Hz
- **工業控制**: 週期性控制信號
- **測試設備**: 時間基準產生器

## 設計挑戶

### 1. BCD 運算複雜性
- 十進制進位邏輯
- 無效BCD碼的處理

### 2. 同步設計考量
- 競爭條件的避免
- 時脈域同步問題

### 3. 測試覆蓋率
- 所有BCD值的驗證
- 邊界條件的完整測試

## 擴展功能

- **可變模數**: 支援不同的計數上限
- **向下計數**: 雙向計數功能
- **預設載入**: 多組預設值選擇
- **級聯設計**: 多個計數器串接