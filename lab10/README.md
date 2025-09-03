# Lab 10 - LED控制器 / LED Controller

## 實驗目標 / Objective

使用VHDL製作LED控制器，實現多種LED控制模式和效果

Design an LED controller using VHDL to implement various LED control modes and effects

## 功能描述 / Functionality Description

本LED控制器設計用於控制多個LED的亮度、閃爍模式和顯示效果，提供豐富的視覺表現。

This LED controller is designed to control multiple LEDs' brightness, blinking patterns, and display effects, providing rich visual presentations.

### 控制功能 / Control Functions

- **亮度控制 / Brightness Control**: PWM調光技術
- **模式選擇 / Pattern Selection**: 多種預設模式
- **速度調節 / Speed Adjustment**: 可調節的變化頻率
- **方向控制 / Direction Control**: 雙向效果控制

## 設計規格 / Design Specifications

### 輸入信號 / Input Signals

```vhdl
clk         : in  std_logic;                    -- 系統時脈
reset       : in  std_logic;                    -- 重置信號
mode_sel    : in  std_logic_vector(2 downto 0); -- 模式選擇
speed_sel   : in  std_logic_vector(1 downto 0); -- 速度選擇
direction   : in  std_logic;                    -- 方向控制
enable      : in  std_logic;                    -- 功能致能
```

### 輸出信號 / Output Signals

```vhdl
led_out     : out std_logic_vector(7 downto 0); -- 8個LED輸出
pwm_out     : out std_logic_vector(7 downto 0); -- PWM亮度控制
```

### 控制模式表 / Control Mode Table

| mode_sel | 模式 / Mode | 效果描述 / Effect Description |
|----------|-------------|------------------------------|
| 000      | 全亮 / All On | 所有LED保持點亮 |
| 001      | 跑馬燈 / Running Light | LED依序點亮移動 |
| 010      | 呼吸燈 / Breathing | 亮度漸變效果 |
| 011      | 閃爍 / Blinking | 週期性閃爍 |
| 100      | 波浪 / Wave | 波浪式變化 |
| 101      | 隨機 / Random | 隨機點亮模式 |
| 110      | 計數 / Binary Count | 二進制計數顯示 |
| 111      | 關閉 / All Off | 所有LED熄滅 |

## VHDL 實作架構 / VHDL Implementation Architecture

### 1. 實體宣告 / Entity Declaration

```vhdl
entity led_controller is
    port (
        clk       : in  std_logic;
        reset     : in  std_logic;
        mode_sel  : in  std_logic_vector(2 downto 0);
        speed_sel : in  std_logic_vector(1 downto 0);
        direction : in  std_logic;
        enable    : in  std_logic;
        led_out   : out std_logic_vector(7 downto 0);
        pwm_out   : out std_logic_vector(7 downto 0)
    );
end led_controller;
```

### 2. 主要模組設計 / Main Module Design

#### 時脈分頻器 / Clock Divider
```vhdl
component clock_divider is
    port (
        clk_in    : in  std_logic;
        reset     : in  std_logic;
        speed_sel : in  std_logic_vector(1 downto 0);
        clk_out   : out std_logic
    );
end component;
```

#### PWM產生器 / PWM Generator
```vhdl
component pwm_generator is
    port (
        clk        : in  std_logic;
        reset      : in  std_logic;
        duty_cycle : in  std_logic_vector(7 downto 0);
        pwm_out    : out std_logic
    );
end component;
```

#### 模式控制器 / Pattern Controller
```vhdl
component pattern_controller is
    port (
        clk       : in  std_logic;
        reset     : in  std_logic;
        mode_sel  : in  std_logic_vector(2 downto 0);
        direction : in  std_logic;
        enable    : in  std_logic;
        pattern   : out std_logic_vector(7 downto 0)
    );
end component;
```

## 控制模式實作 / Control Mode Implementation

### 1. 跑馬燈模式 / Running Light Mode

```vhdl
when "001" =>  -- 跑馬燈
    if rising_edge(divided_clk) then
        if direction = '0' then  -- 左移
            led_pattern <= led_pattern(6 downto 0) & led_pattern(7);
        else  -- 右移
            led_pattern <= led_pattern(0) & led_pattern(7 downto 1);
        end if;
    end if;
```

### 2. 呼吸燈模式 / Breathing Mode

```vhdl
when "010" =>  -- 呼吸燈
    if rising_edge(divided_clk) then
        if brightness_dir = '0' then
            if brightness < 255 then
                brightness <= brightness + 1;
            else
                brightness_dir <= '1';
            end if;
        else
            if brightness > 0 then
                brightness <= brightness - 1;
            else
                brightness_dir <= '0';
            end if;
        end if;
    end if;
```

### 3. 波浪模式 / Wave Mode

```vhdl
when "100" =>  -- 波浪
    for i in 0 to 7 loop
        sine_value := to_integer(sine_table((counter + i*32) mod 256));
        led_brightness(i) <= std_logic_vector(to_unsigned(sine_value, 8));
    end loop;
```

## 檔案結構 / File Structure

```
lab10/
├── README.md              # 本說明文件 / This README
├── src/                  # 源碼檔案 / Source files
│   ├── led_controller.vhd    # 主控制器
│   ├── clock_divider.vhd     # 時脈分頻器
│   ├── pwm_generator.vhd     # PWM產生器
│   ├── pattern_controller.vhd # 模式控制器
│   └── led_controller_tb.vhd  # Testbench
├── *.qpf                 # Quartus 專案檔
├── simulation/           # 模擬檔案
│   ├── wave.do              # 波形設定
│   └── test_patterns.txt    # 測試模式
└── docs/                # 說明文件
    ├── mode_effects.png     # 模式效果圖
    ├── timing_analysis.pdf  # 時序分析
    └── pwm_waveforms.png    # PWM波形圖
```

## 測試與驗證 / Testing and Verification

### 測試案例 / Test Cases

1. **模式切換測試 / Mode Switching Test**
   - 遍歷所有8種模式
   - 驗證模式轉換的正確性

2. **速度控制測試 / Speed Control Test**
   - 測試4種不同速度設定
   - 驗證時脈分頻的準確性

3. **方向控制測試 / Direction Control Test**
   - 測試正反向效果
   - 驗證方向切換的即時性

4. **PWM功能測試 / PWM Functionality Test**
   - 測試不同佔空比的PWM輸出
   - 驗證亮度控制的線性度

### 性能指標 / Performance Metrics

- **響應時間 / Response Time**: < 1 clock cycle
- **PWM頻率 / PWM Frequency**: 1 kHz
- **模式切換時間 / Mode Switch Time**: < 10 ms
- **功耗 / Power Consumption**: 最佳化設計

## 學習重點 / Key Learning Points

- LED控制電路的設計原理
- PWM (脈寬調變) 技術應用
- 時脈分頻與時序控制
- 多模式狀態機設計
- 數位信號處理在照明控制中的應用

- Design principles of LED control circuits
- PWM (Pulse Width Modulation) technology applications
- Clock division and timing control
- Multi-mode state machine design
- Digital signal processing in lighting control applications

## 應用領域 / Application Areas

- **裝飾照明 / Decorative Lighting**: 建築物外觀照明
- **指示燈系統 / Indicator Systems**: 設備狀態顯示
- **汽車照明 / Automotive Lighting**: 車輛燈光控制
- **舞台燈光 / Stage Lighting**: 演出效果控制
- **智慧家庭 / Smart Home**: 情境照明系統

## 擴展功能 / Extended Features

### 1. 進階控制模式 / Advanced Control Modes
- 音樂同步模式 / Music synchronization mode
- 溫度響應模式 / Temperature response mode
- 感光自動調節 / Light sensor auto-adjustment

### 2. 通信介面 / Communication Interface
- SPI/I2C 控制介面
- 無線控制支援
- 串列命令解析

### 3. 安全保護 / Safety Protection
- 過熱保護機制
- 短路檢測功能
- 故障診斷系統

## 設計挑戰 / Design Challenges

1. **功耗最佳化 / Power Optimization**
   - 動態功耗管理
   - 待機模式設計

2. **EMI/EMC考量 / EMI/EMC Considerations**
   - 開關頻率最佳化
   - 濾波電路設計

3. **使用者體驗 / User Experience**
   - 直觀的控制介面
   - 平滑的效果轉換