# Lab 11 - PWM呼吸燈

## 實驗目標

使用VHDL製作自動調節LED亮度的呼吸燈：
1. LED 單方向的亮度變化
2. LED 逐漸變亮然後再逐漸變暗

## 功能描述

**呼吸燈 (Breathing LED)** 是一種模擬人類呼吸節奏的LED亮度控制效果，通過PWM技術實現LED亮度的週期性漸變。

### 呼吸效果特性 / Breathing Effect Characteristics

- **漸亮階段 / Brightening Phase**: 亮度從0%逐漸增加到100%
- **漸暗階段 / Dimming Phase**: 亮度從100%逐漸減少到0%
- **平滑過渡 / Smooth Transition**: 無突變的連續亮度變化
- **週期性重複 / Periodic Repetition**: 持續循環的呼吸效果

## 設計規格 / Design Specifications

### 輸入信號 / Input Signals

```vhdl
clk         : in  std_logic;                    -- 系統時脈 (50MHz)
reset       : in  std_logic;                    -- 重置信號 (低電位有效)
enable      : in  std_logic;                    -- 呼吸燈致能
speed_ctrl  : in  std_logic_vector(1 downto 0); -- 呼吸速度控制
```

### 輸出信號 / Output Signals

```vhdl
led_pwm     : out std_logic;                    -- PWM輸出到LED
brightness  : out std_logic_vector(7 downto 0); -- 當前亮度值 (0-255)
breathing_phase : out std_logic;                -- 呼吸階段指示 (0:變亮, 1:變暗)
```

### 呼吸參數 / Breathing Parameters

| speed_ctrl | 呼吸週期 / Breathing Period | 頻率 / Frequency |
|------------|----------------------------|------------------|
| 00         | 4 秒 / 4 seconds           | 0.25 Hz         |
| 01         | 2 秒 / 2 seconds           | 0.5 Hz          |
| 10         | 1 秒 / 1 second            | 1 Hz            |
| 11         | 0.5 秒 / 0.5 seconds       | 2 Hz            |

## PWM原理與實作 / PWM Principles and Implementation

### PWM基本概念 / PWM Basic Concepts

**脈寬調變 (Pulse Width Modulation)** 是一種通過改變脈衝寬度來控制平均功率的技術。

Pulse Width Modulation is a technique that controls average power by varying pulse width.

```
PWM週期 / PWM Period = 256 個時脈週期
亮度控制 / Brightness Control = 佔空比 (Duty Cycle) = 高電位時間 / 總週期時間

亮度 0%:   ________  (佔空比 0%)
亮度 25%:  ▅▅▅_____ (佔空比 25%)  
亮度 50%:  ▅▅▅▅▅___ (佔空比 50%)
亮度 75%:  ▅▅▅▅▅▅▅_ (佔空比 75%)
亮度 100%: ▅▅▅▅▅▅▅▅ (佔空比 100%)
```

### PWM產生器實作 / PWM Generator Implementation

```vhdl
entity pwm_generator is
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        duty_cycle  : in  std_logic_vector(7 downto 0);
        pwm_out     : out std_logic
    );
end pwm_generator;

architecture behavioral of pwm_generator is
    signal counter : std_logic_vector(7 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '0' then
            counter <= (others => '0');
            pwm_out <= '0';
        elsif rising_edge(clk) then
            counter <= std_logic_vector(unsigned(counter) + 1);
            if unsigned(counter) < unsigned(duty_cycle) then
                pwm_out <= '1';
            else
                pwm_out <= '0';
            end if;
        end if;
    end process;
end behavioral;
```

## 呼吸控制邏輯 / Breathing Control Logic

### 亮度變化算法 / Brightness Variation Algorithm

```vhdl
entity breathing_controller is
    port (
        clk             : in  std_logic;
        reset           : in  std_logic;
        enable          : in  std_logic;
        speed_ctrl      : in  std_logic_vector(1 downto 0);
        brightness_out  : out std_logic_vector(7 downto 0);
        phase_out       : out std_logic
    );
end breathing_controller;

architecture behavioral of breathing_controller is
    signal brightness_reg : std_logic_vector(7 downto 0);
    signal direction : std_logic; -- 0: 變亮, 1: 變暗
    signal speed_counter : unsigned(19 downto 0);
    signal speed_limit : unsigned(19 downto 0);
begin
    -- 速度控制查找表 / Speed control lookup table
    with speed_ctrl select
        speed_limit <= to_unsigned(1000000, 20) when "00",  -- 4秒
                      to_unsigned(500000, 20)  when "01",  -- 2秒
                      to_unsigned(250000, 20)  when "10",  -- 1秒
                      to_unsigned(125000, 20)  when "11",  -- 0.5秒
                      to_unsigned(250000, 20)  when others;
    
    process(clk, reset)
    begin
        if reset = '0' then
            brightness_reg <= (others => '0');
            direction <= '0';
            speed_counter <= (others => '0');
        elsif rising_edge(clk) then
            if enable = '1' then
                if speed_counter = speed_limit then
                    speed_counter <= (others => '0');
                    
                    if direction = '0' then  -- 變亮階段
                        if brightness_reg = "11111111" then
                            direction <= '1';  -- 切換到變暗
                        else
                            brightness_reg <= std_logic_vector(unsigned(brightness_reg) + 1);
                        end if;
                    else  -- 變暗階段
                        if brightness_reg = "00000000" then
                            direction <= '0';  -- 切換到變亮
                        else
                            brightness_reg <= std_logic_vector(unsigned(brightness_reg) - 1);
                        end if;
                    end if;
                else
                    speed_counter <= speed_counter + 1;
                end if;
            end if;
        end if;
    end process;
    
    brightness_out <= brightness_reg;
    phase_out <= direction;
end behavioral;
```

## 完整系統架構 / Complete System Architecture

### 頂層模組 / Top-level Module

```vhdl
entity breathing_led is
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        enable      : in  std_logic;
        speed_ctrl  : in  std_logic_vector(1 downto 0);
        led_pwm     : out std_logic;
        brightness  : out std_logic_vector(7 downto 0);
        breathing_phase : out std_logic
    );
end breathing_led;

architecture structural of breathing_led is
    component breathing_controller
        port (
            clk, reset, enable : in std_logic;
            speed_ctrl : in std_logic_vector(1 downto 0);
            brightness_out : out std_logic_vector(7 downto 0);
            phase_out : out std_logic
        );
    end component;
    
    component pwm_generator
        port (
            clk, reset : in std_logic;
            duty_cycle : in std_logic_vector(7 downto 0);
            pwm_out : out std_logic
        );
    end component;
    
    signal brightness_internal : std_logic_vector(7 downto 0);
begin
    BREATH_CTRL: breathing_controller
        port map (clk, reset, enable, speed_ctrl, brightness_internal, breathing_phase);
    
    PWM_GEN: pwm_generator
        port map (clk, reset, brightness_internal, led_pwm);
    
    brightness <= brightness_internal;
end structural;
```

## 檔案結構 / File Structure

```
lab11/
├── README.md                  # 本說明文件 / This README
├── src/                      # 源碼檔案 / Source files
│   ├── breathing_led.vhd         # 頂層模組
│   ├── breathing_controller.vhd  # 呼吸控制器
│   ├── pwm_generator.vhd         # PWM產生器
│   └── breathing_led_tb.vhd      # Testbench
├── *.qpf                     # Quartus 專案檔
├── simulation/               # 模擬檔案
│   ├── wave.do                  # 波形設定
│   ├── pwm_analysis.do          # PWM分析腳本
│   └── breathing_pattern.txt    # 呼吸模式記錄
└── docs/                    # 說明文件
    ├── pwm_waveforms.png        # PWM波形圖
    ├── breathing_curve.png      # 呼吸曲線圖
    └── timing_analysis.pdf      # 時序分析報告
```

## 測試與驗證 / Testing and Verification

### 測試案例 / Test Cases

1. **PWM功能測試 / PWM Functionality Test**
   ```vhdl
   -- 測試不同佔空比的PWM輸出
   test_duty_cycles: for i in 0 to 255 loop
       duty_cycle <= std_logic_vector(to_unsigned(i, 8));
       wait for pwm_period;
       -- 驗證PWM波形正確性
   end loop;
   ```

2. **呼吸週期測試 / Breathing Cycle Test**
   ```vhdl
   -- 測試完整的呼吸週期
   enable <= '1';
   for speed in 0 to 3 loop
       speed_ctrl <= std_logic_vector(to_unsigned(speed, 2));
       wait for breathing_period(speed);
       -- 驗證亮度變化曲線
   end loop;
   ```

3. **邊界條件測試 / Boundary Condition Test**
   - 最大亮度 (255) 保持時間
   - 最小亮度 (0) 保持時間
   - 方向切換的準確性

### 性能驗證 / Performance Verification

- **PWM頻率 / PWM Frequency**: 195.3 kHz (50MHz/256)
- **亮度解析度 / Brightness Resolution**: 8-bit (256 levels)
- **呼吸平滑度 / Breathing Smoothness**: 線性變化
- **功耗評估 / Power Consumption**: 與亮度成正比

## 學習重點 / Key Learning Points

- PWM (脈寬調變) 技術原理與應用
- 週期性控制系統的設計方法
- 時序分頻與計數器設計
- 多模組階層化設計方法
- 類比效果的數位實現技術

- PWM (Pulse Width Modulation) technology principles and applications
- Design methods for periodic control systems
- Timing division and counter design
- Multi-module hierarchical design methodology
- Digital implementation of analog effects
