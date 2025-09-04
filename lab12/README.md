# Lab 12 - 跑馬燈電路 / Shift LED Circuit

## 實驗目標 / Objective

使用VHDL製作跑馬燈的電路，讓LED週期性的向左右位移，按下按鈕可改變位移的頻率

Design a shift LED circuit using VHDL that makes LEDs shift left and right periodically, with button control to change the shifting frequency

## 功能描述 / Functionality Description

**跑馬燈 (Shift LED)** 是一種經典的LED顯示效果，通過依序點亮LED產生移動的視覺效果，廣泛應用於裝飾照明和狀態指示。

Shift LED is a classic LED display effect that creates moving visual effects by sequentially lighting LEDs, widely used in decorative lighting and status indication.

### 跑馬燈特性 / Shift LED Characteristics

- **循環移位 / Circular Shift**: LED圖案循環左右移動
- **可變頻率 / Variable Frequency**: 按鈕控制移動速度
- **雙向移動 / Bidirectional Movement**: 支援左移和右移
- **模式切換 / Pattern Switching**: 多種跑馬燈模式

## 設計規格 / Design Specifications

### 輸入信號 / Input Signals

```vhdl
clk         : in  std_logic;                    -- 系統時脈 (50MHz)
reset       : in  std_logic;                    -- 重置信號 (低電位有效)
btn_freq    : in  std_logic;                    -- 頻率調節按鈕
btn_dir     : in  std_logic;                    -- 方向切換按鈕
btn_mode    : in  std_logic;                    -- 模式切換按鈕
enable      : in  std_logic;                    -- 跑馬燈致能
```

### 輸出信號 / Output Signals

```vhdl
led_out     : out std_logic_vector(7 downto 0); -- 8個LED輸出
freq_level  : out std_logic_vector(1 downto 0); -- 當前頻率等級顯示
direction   : out std_logic;                    -- 當前移動方向 (0:左, 1:右)
mode_out    : out std_logic_vector(1 downto 0); -- 當前模式顯示
```

### 頻率控制 / Frequency Control

| freq_level | 移位頻率 / Shift Frequency | 週期時間 / Period Time |
|------------|---------------------------|----------------------|
| 00         | 1 Hz                      | 1 秒 / 1 second     |
| 01         | 2 Hz                      | 0.5 秒 / 0.5 seconds |
| 10         | 4 Hz                      | 0.25 秒 / 0.25 seconds |
| 11         | 8 Hz                      | 0.125 秒 / 0.125 seconds |

### 跑馬燈模式 / Shift LED Modes

| mode_out | 模式名稱 / Mode Name | 圖案描述 / Pattern Description |
|----------|---------------------|-------------------------------|
| 00       | 單點移動 / Single Dot | 單個LED點亮移動: 10000000 → 01000000 → ... |
| 01       | 雙點移動 / Double Dot | 兩個LED點亮移動: 11000000 → 01100000 → ... |
| 10       | 尾跡模式 / Trail Mode | 漸減尾跡效果: 11110000 → 01111000 → ... |
| 11       | 波浪模式 / Wave Mode | 波浪式點亮: 10101010 → 01010101 → ... |

## VHDL 實作架構 / VHDL Implementation Architecture

### 1. 頂層實體宣告 / Top-level Entity Declaration

```vhdl
entity shift_led is
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        btn_freq    : in  std_logic;
        btn_dir     : in  std_logic;
        btn_mode    : in  std_logic;
        enable      : in  std_logic;
        led_out     : out std_logic_vector(7 downto 0);
        freq_level  : out std_logic_vector(1 downto 0);
        direction   : out std_logic;
        mode_out    : out std_logic_vector(1 downto 0)
    );
end shift_led;
```

### 2. 按鈕處理模組 / Button Handler Module

```vhdl
entity button_handler is
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        btn_in      : in  std_logic;
        btn_pulse   : out std_logic
    );
end button_handler;

architecture behavioral of button_handler is
    signal btn_sync   : std_logic_vector(2 downto 0);
    signal btn_edge   : std_logic;
begin
    -- 按鈕同步化和邊緣檢測 / Button synchronization and edge detection
    process(clk, reset)
    begin
        if reset = '0' then
            btn_sync <= (others => '0');
        elsif rising_edge(clk) then
            btn_sync <= btn_sync(1 downto 0) & btn_in;
        end if;
    end process;
    
    btn_edge <= btn_sync(1) and not btn_sync(2);
    btn_pulse <= btn_edge;
end behavioral;
```

### 3. 時脈分頻模組 / Clock Divider Module

```vhdl
entity clock_divider is
    port (
        clk_in      : in  std_logic;
        reset       : in  std_logic;
        freq_sel    : in  std_logic_vector(1 downto 0);
        clk_out     : out std_logic
    );
end clock_divider;

architecture behavioral of clock_divider is
    signal counter : unsigned(25 downto 0);
    signal div_limit : unsigned(25 downto 0);
begin
    -- 分頻比選擇 / Division ratio selection
    with freq_sel select
        div_limit <= to_unsigned(50000000, 26) when "00",  -- 1 Hz
                    to_unsigned(25000000, 26) when "01",  -- 2 Hz
                    to_unsigned(12500000, 26) when "10",  -- 4 Hz
                    to_unsigned(6250000, 26)  when "11",  -- 8 Hz
                    to_unsigned(25000000, 26) when others;
    
    process(clk_in, reset)
    begin
        if reset = '0' then
            counter <= (others => '0');
            clk_out <= '0';
        elsif rising_edge(clk_in) then
            if counter = div_limit - 1 then
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

### 4. 移位邏輯模組 / Shift Logic Module

```vhdl
entity shift_logic is
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        shift_clk   : in  std_logic;
        direction   : in  std_logic;
        mode        : in  std_logic_vector(1 downto 0);
        enable      : in  std_logic;
        led_pattern : out std_logic_vector(7 downto 0)
    );
end shift_logic;

architecture behavioral of shift_logic is
    signal pattern_reg : std_logic_vector(7 downto 0);
    signal init_pattern : std_logic_vector(7 downto 0);
begin
    -- 初始圖案選擇 / Initial pattern selection
    with mode select
        init_pattern <= "10000000" when "00",  -- 單點
                       "11000000" when "01",  -- 雙點
                       "11110000" when "10",  -- 尾跡
                       "10101010" when "11",  -- 波浪
                       "10000000" when others;
    
    process(clk, reset)
    begin
        if reset = '0' then
            pattern_reg <= init_pattern;
        elsif rising_edge(clk) then
            if enable = '1' and shift_clk = '1' then
                if direction = '0' then  -- 左移
                    pattern_reg <= pattern_reg(6 downto 0) & pattern_reg(7);
                else  -- 右移
                    pattern_reg <= pattern_reg(0) & pattern_reg(7 downto 1);
                end if;
            end if;
        end if;
    end process;
    
    led_pattern <= pattern_reg;
end behavioral;
```

## 系統整合 / System Integration

### 主控制器實作 / Main Controller Implementation

```vhdl
architecture structural of shift_led is
    -- 組件宣告 / Component declarations
    component button_handler ... end component;
    component clock_divider ... end component;
    component shift_logic ... end component;
    
    -- 內部信號 / Internal signals
    signal freq_level_reg : std_logic_vector(1 downto 0);
    signal direction_reg : std_logic;
    signal mode_reg : std_logic_vector(1 downto 0);
    signal shift_clk : std_logic;
    signal btn_freq_pulse, btn_dir_pulse, btn_mode_pulse : std_logic;
begin
    -- 按鈕處理實例化 / Button handler instantiation
    BTN_FREQ_HANDLER: button_handler
        port map (clk, reset, btn_freq, btn_freq_pulse);
    
    BTN_DIR_HANDLER: button_handler
        port map (clk, reset, btn_dir, btn_dir_pulse);
    
    BTN_MODE_HANDLER: button_handler
        port map (clk, reset, btn_mode, btn_mode_pulse);
    
    -- 時脈分頻器實例化 / Clock divider instantiation
    CLK_DIV: clock_divider
        port map (clk, reset, freq_level_reg, shift_clk);
    
    -- 移位邏輯實例化 / Shift logic instantiation
    SHIFT_CTRL: shift_logic
        port map (clk, reset, shift_clk, direction_reg, mode_reg, enable, led_out);
    
    -- 控制邏輯 / Control logic
    process(clk, reset)
    begin
        if reset = '0' then
            freq_level_reg <= "00";
            direction_reg <= '0';
            mode_reg <= "00";
        elsif rising_edge(clk) then
            if btn_freq_pulse = '1' then
                freq_level_reg <= std_logic_vector(unsigned(freq_level_reg) + 1);
            end if;
            
            if btn_dir_pulse = '1' then
                direction_reg <= not direction_reg;
            end if;
            
            if btn_mode_pulse = '1' then
                mode_reg <= std_logic_vector(unsigned(mode_reg) + 1);
            end if;
        end if;
    end process;
    
    -- 輸出分配 / Output assignment
    freq_level <= freq_level_reg;
    direction <= direction_reg;
    mode_out <= mode_reg;
end structural;
```

## 檔案結構 / File Structure

```
lab12/
├── README.md                  # 本說明文件 / This README
├── src/                      # 源碼檔案 / Source files
│   ├── shift_led.vhd             # 頂層模組
│   ├── button_handler.vhd        # 按鈕處理器
│   ├── clock_divider.vhd         # 時脈分頻器
│   ├── shift_logic.vhd           # 移位邏輯
│   └── shift_led_tb.vhd          # Testbench
├── *.qpf                     # Quartus 專案檔
├── simulation/               # 模擬檔案
│   ├── wave.do                  # 波形設定
│   ├── pattern_analysis.do      # 圖案分析腳本
│   └── button_test.do           # 按鈕測試腳本
└── docs/                    # 說明文件
    ├── shift_patterns.png       # 移位圖案示意圖
    ├── timing_diagram.png       # 時序圖
    └── button_debounce.pdf      # 按鈕去彈跳分析
```

## 測試與驗證 / Testing and Verification

### 測試策略 / Testing Strategy

1. **基本移位測試 / Basic Shift Test**
   ```vhdl
   -- 測試左移功能
   direction <= '0';
   enable <= '1';
   wait for 8 * shift_period;
   -- 驗證LED圖案完成一次完整循環
   ```

2. **按鈕功能測試 / Button Function Test**
   ```vhdl
   -- 測試頻率調節按鈕
   for i in 0 to 3 loop
       btn_freq <= '1';
       wait for 20 ns;
       btn_freq <= '0';
       wait for 1000 ns;
       -- 驗證頻率變化
   end loop;
   ```

3. **模式切換測試 / Mode Switching Test**
   ```vhdl
   -- 測試所有跑馬燈模式
   for mode in 0 to 3 loop
       btn_mode <= '1';
       wait for 20 ns;
       btn_mode <= '0';
       wait for shift_period * 8;
       -- 驗證圖案正確性
   end loop;
   ```

### 性能指標 / Performance Metrics

- **按鈕響應時間 / Button Response Time**: < 50 ms
- **頻率穩定度 / Frequency Stability**: ±1%
- **圖案完整性 / Pattern Integrity**: 100%
- **功耗效率 / Power Efficiency**: 最佳化設計

## 學習重點 / Key Learning Points

- 循環移位暫存器的設計與應用
- 按鈕去彈跳技術的實作方法
- 多頻率時脈分頻系統設計
- 狀態機在模式控制中的應用
- 系統級整合與模組化設計

- Design and application of circular shift registers
- Implementation methods for button debouncing techniques
- Multi-frequency clock division system design
- Application of state machines in mode control
- System-level integration and modular design

## 應用實例 / Application Examples

### 商業應用 / Commercial Applications
- **廣告招牌 / Advertising Signs**: 動態文字顯示
- **交通號誌 / Traffic Signals**: 方向指示燈
- **舞台燈光 / Stage Lighting**: 動態背景效果
- **遊樂設施 / Amusement Facilities**: 裝飾照明

### 技術擴展 / Technical Extensions
- **RGB跑馬燈 / RGB Shift LED**: 彩色變化效果
- **音樂同步 / Music Synchronization**: 節拍響應模式
- **網路控制 / Network Control**: 遠端控制介面
- **感應觸發 / Sensor Triggered**: 自動啟動功能

## 故障診斷 / Troubleshooting

### 常見問題 / Common Issues

1. **按鈕彈跳問題 / Button Bounce Issues**
   - 症狀：多次觸發
   - 解決：加強去彈跳電路

2. **時脈不穩定 / Clock Instability**
   - 症狀：移位速度不規則
   - 解決：檢查分頻器設計

3. **圖案錯亂 / Pattern Corruption**
   - 症狀：LED顯示混亂
   - 解決：重置邏輯檢查

4. **模式切換失效 / Mode Switch Failure**
   - 症狀：無法切換模式
   - 解決：狀態機邏輯驗證