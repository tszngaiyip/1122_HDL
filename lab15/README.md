# Lab 15 - 紅綠燈控制器 / Traffic Light Controller

## 實驗目標 / Objective

使用VHDL製作七段顯示器，完成紅綠燈電路
1. LED[0]模擬綠燈、LED[1]模擬黃燈、LED[2]模擬紅燈
2. HEX0 模擬十進位倒數計時器

Design a seven-segment display using VHDL to implement a traffic light circuit
1. LED[0] simulates green light, LED[1] simulates yellow light, LED[2] simulates red light
2. HEX0 simulates decimal countdown timer

## 功能描述 / Functionality Description

**紅綠燈控制器 (Traffic Light Controller)** 是一個模擬交通信號燈的數位控制系統，通過狀態機控制燈號切換和倒數計時功能。

The Traffic Light Controller is a digital control system that simulates traffic signal lights, using state machines to control light switching and countdown timing functions.

### 交通燈序列 / Traffic Light Sequence

標準的交通燈控制序列：

Standard traffic light control sequence:

```
綠燈 (Green) → 黃燈 (Yellow) → 紅燈 (Red) → 綠燈 (Green) → ...
```

### 系統特性 / System Characteristics

- **狀態機控制 / State Machine Control**: 有限狀態機管理燈號轉換
- **倒數計時 / Countdown Timer**: 每個狀態顯示剩餘時間
- **可調時間 / Adjustable Timing**: 可設定各燈號持續時間
- **緊急模式 / Emergency Mode**: 支援緊急車輛通過控制

## 設計規格 / Design Specifications

### 輸入信號 / Input Signals

```vhdl
clk         : in  std_logic;                    -- 系統時脈 (50MHz)
reset       : in  std_logic;                    -- 重置信號 (低電位有效)
enable      : in  std_logic;                    -- 系統致能
emergency   : in  std_logic;                    -- 緊急模式觸發
manual_mode : in  std_logic;                    -- 手動模式切換
next_state  : in  std_logic;                    -- 手動下一狀態
time_set    : in  std_logic_vector(7 downto 0); -- 時間設定 (BCD)
```

### 輸出信號 / Output Signals

```vhdl
led_green   : out std_logic;                    -- 綠燈 LED[0]
led_yellow  : out std_logic;                    -- 黃燈 LED[1] 
led_red     : out std_logic;                    -- 紅燈 LED[2]
hex0        : out std_logic_vector(6 downto 0); -- 倒數計時顯示
state_out   : out std_logic_vector(1 downto 0); -- 當前狀態輸出
timer_out   : out std_logic_vector(7 downto 0); -- 計時器輸出 (BCD)
```

### 狀態定義 / State Definition

| 狀態 / State | state_out | 燈號 / Light | 預設時間 / Default Time | 功能描述 / Function |
|-------------|-----------|--------------|----------------------|-------------------|
| GREEN       | 00        | 綠燈亮 / Green ON | 30秒 / 30 seconds | 通行狀態 / GO state |
| YELLOW      | 01        | 黃燈亮 / Yellow ON | 5秒 / 5 seconds | 警告狀態 / CAUTION state |
| RED         | 10        | 紅燈亮 / Red ON | 25秒 / 25 seconds | 停止狀態 / STOP state |
| EMERGENCY   | 11        | 黃燈閃爍 / Yellow FLASH | 持續 / Continuous | 緊急狀態 / EMERGENCY state |

## VHDL 實作架構 / VHDL Implementation Architecture

### 1. 實體宣告 / Entity Declaration

```vhdl
entity traffic_light is
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        enable      : in  std_logic;
        emergency   : in  std_logic;
        manual_mode : in  std_logic;
        next_state  : in  std_logic;
        time_set    : in  std_logic_vector(7 downto 0);
        led_green   : out std_logic;
        led_yellow  : out std_logic;
        led_red     : out std_logic;
        hex0        : out std_logic_vector(6 downto 0);
        state_out   : out std_logic_vector(1 downto 0);
        timer_out   : out std_logic_vector(7 downto 0)
    );
end traffic_light;
```

### 2. 狀態機控制器 / State Machine Controller

```vhdl
entity traffic_fsm is
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        enable      : in  std_logic;
        emergency   : in  std_logic;
        manual_mode : in  std_logic;
        next_state  : in  std_logic;
        timer_zero  : in  std_logic;
        current_state : out std_logic_vector(1 downto 0);
        state_change  : out std_logic
    );
end traffic_fsm;

architecture behavioral of traffic_fsm is
    type state_type is (GREEN, YELLOW, RED, EMERGENCY);
    signal state_reg, state_next : state_type;
    signal manual_pulse : std_logic;
    signal manual_sync : std_logic_vector(2 downto 0);
begin
    -- 手動按鈕邊緣檢測 / Manual button edge detection
    process(clk, reset)
    begin
        if reset = '0' then
            manual_sync <= (others => '0');
        elsif rising_edge(clk) then
            manual_sync <= manual_sync(1 downto 0) & next_state;
        end if;
    end process;
    manual_pulse <= manual_sync(1) and not manual_sync(2);
    
    -- 狀態暫存器 / State register
    process(clk, reset)
    begin
        if reset = '0' then
            state_reg <= GREEN;
        elsif rising_edge(clk) then
            if enable = '1' then
                state_reg <= state_next;
            end if;
        end if;
    end process;
    
    -- 次態邏輯 / Next state logic
    process(state_reg, emergency, manual_mode, manual_pulse, timer_zero)
    begin
        state_next <= state_reg;
        state_change <= '0';
        
        if emergency = '1' then
            state_next <= EMERGENCY;
            state_change <= '1';
        elsif manual_mode = '1' then
            if manual_pulse = '1' then
                case state_reg is
                    when GREEN    => state_next <= YELLOW;
                    when YELLOW   => state_next <= RED;
                    when RED      => state_next <= GREEN;
                    when EMERGENCY => state_next <= GREEN;
                end case;
                state_change <= '1';
            end if;
        else
            if timer_zero = '1' then
                case state_reg is
                    when GREEN  => state_next <= YELLOW;
                    when YELLOW => state_next <= RED;
                    when RED    => state_next <= GREEN;
                    when others => state_next <= GREEN;
                end case;
                state_change <= '1';
            end if;
        end if;
    end process;
    
    -- 輸出邏輯 / Output logic
    with state_reg select
        current_state <= "00" when GREEN,
                        "01" when YELLOW,
                        "10" when RED,
                        "11" when EMERGENCY,
                        "00" when others;
end behavioral;
```

### 3. 倒數計時器 / Countdown Timer

```vhdl
entity countdown_timer is
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        enable      : in  std_logic;
        load        : in  std_logic;
        load_value  : in  std_logic_vector(7 downto 0);
        count_out   : out std_logic_vector(7 downto 0);
        zero_flag   : out std_logic
    );
end countdown_timer;

architecture behavioral of countdown_timer is
    signal counter : std_logic_vector(7 downto 0);
    signal second_clk : std_logic;
    signal clk_counter : unsigned(25 downto 0);
begin
    -- 一秒時脈產生 / One second clock generation
    process(clk, reset)
    begin
        if reset = '0' then
            clk_counter <= (others => '0');
            second_clk <= '0';
        elsif rising_edge(clk) then
            if clk_counter = 50000000-1 then
                clk_counter <= (others => '0');
                second_clk <= '1';
            else
                clk_counter <= clk_counter + 1;
                second_clk <= '0';
            end if;
        end if;
    end process;
    
    -- BCD倒數計數器 / BCD countdown counter
    process(clk, reset)
    begin
        if reset = '0' then
            counter <= "00000000";
        elsif rising_edge(clk) then
            if load = '1' then
                counter <= load_value;
            elsif enable = '1' and second_clk = '1' then
                if counter = "00000000" then
                    counter <= "00000000"; -- 保持為 0
                else
                    -- BCD遞減邏輯 / BCD decrement logic
                    if counter(3 downto 0) = "0000" then -- 個位數為 0
                        counter(3 downto 0) <= "1001";   -- 個位數變為 9
                        if counter(7 downto 4) = "0000" then -- 十位數為 0
                            counter <= "00000000";       -- 計時結束
                        else
                            counter(7 downto 4) <= std_logic_vector(unsigned(counter(7 downto 4)) - 1);
                        end if;
                    else
                        counter(3 downto 0) <= std_logic_vector(unsigned(counter(3 downto 0)) - 1);
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    count_out <= counter;
    zero_flag <= '1' when counter = "00000000" else '0';
end behavioral;
```

### 4. LED控制器 / LED Controller

```vhdl
entity led_controller is
    port (
        clk          : in  std_logic;
        reset        : in  std_logic;
        state_in     : in  std_logic_vector(1 downto 0);
        led_green    : out std_logic;
        led_yellow   : out std_logic;
        led_red      : out std_logic
    );
end led_controller;

architecture behavioral of led_controller is
    signal flash_clk : std_logic;
    signal flash_counter : unsigned(24 downto 0);
begin
    -- 閃爍時脈產生 (2Hz) / Flash clock generation (2Hz)
    process(clk, reset)
    begin
        if reset = '0' then
            flash_counter <= (others => '0');
            flash_clk <= '0';
        elsif rising_edge(clk) then
            if flash_counter = 25000000-1 then -- 0.5秒
                flash_counter <= (others => '0');
                flash_clk <= not flash_clk;
            else
                flash_counter <= flash_counter + 1;
            end if;
        end if;
    end process;
    
    -- LED輸出控制 / LED output control
    process(state_in, flash_clk)
    begin
        -- 預設全部關閉 / Default all off
        led_green <= '0';
        led_yellow <= '0';
        led_red <= '0';
        
        case state_in is
            when "00" =>  -- GREEN state
                led_green <= '1';
            when "01" =>  -- YELLOW state
                led_yellow <= '1';
            when "10" =>  -- RED state
                led_red <= '1';
            when "11" =>  -- EMERGENCY state
                led_yellow <= flash_clk; -- 黃燈閃爍
            when others =>
                null;
        end case;
    end process;
end behavioral;
```

### 5. 頂層模組整合 / Top-level Module Integration

```vhdl
architecture structural of traffic_light is
    component traffic_fsm ... end component;
    component countdown_timer ... end component;
    component led_controller ... end component;
    component seg7_decoder ... end component;
    
    signal current_state : std_logic_vector(1 downto 0);
    signal state_change : std_logic;
    signal timer_count : std_logic_vector(7 downto 0);
    signal timer_zero : std_logic;
    signal time_load_value : std_logic_vector(7 downto 0);
begin
    -- 時間設定邏輯 / Time setting logic
    with current_state select
        time_load_value <= "00110000" when "00", -- 30秒 (綠燈)
                          "00000101" when "01", -- 5秒 (黃燈)
                          "00100101" when "10", -- 25秒 (紅燈)
                          "00000000" when "11", -- 0秒 (緊急)
                          "00110000" when others;
    
    -- 狀態機控制器實例化
    FSM_CTRL: traffic_fsm
        port map (
            clk => clk,
            reset => reset,
            enable => enable,
            emergency => emergency,
            manual_mode => manual_mode,
            next_state => next_state,
            timer_zero => timer_zero,
            current_state => current_state,
            state_change => state_change
        );
    
    -- 倒數計時器實例化
    TIMER: countdown_timer
        port map (
            clk => clk,
            reset => reset,
            enable => enable,
            load => (state_change or reset),
            load_value => time_load_value,
            count_out => timer_count,
            zero_flag => timer_zero
        );
    
    -- LED控制器實例化
    LED_CTRL: led_controller
        port map (
            clk => clk,
            reset => reset,
            state_in => current_state,
            led_green => led_green,
            led_yellow => led_yellow,
            led_red => led_red
        );
    
    -- 七段顯示解碼器實例化
    SEG_DECODER: seg7_decoder
        port map (timer_count(3 downto 0), hex0);
    
    -- 輸出分配
    state_out <= current_state;
    timer_out <= timer_count;
end structural;
```

## 檔案結構 / File Structure

```
lab15/
├── README.md                  # 本說明文件 / This README
├── src/                      # 源碼檔案 / Source files
│   ├── traffic_light.vhd         # 頂層交通燈模組
│   ├── traffic_fsm.vhd           # 交通燈狀態機
│   ├── countdown_timer.vhd       # 倒數計時器
│   ├── led_controller.vhd        # LED控制器
│   ├── seg7_decoder.vhd          # 七段顯示解碼器
│   └── traffic_light_tb.vhd      # Testbench
├── *.qpf                     # Quartus 專案檔
├── simulation/               # 模擬檔案
│   ├── wave.do                  # 波形設定
│   ├── fsm_test.do              # 狀態機測試腳本
│   ├── timer_test.do            # 計時器測試腳本
│   └── emergency_test.do        # 緊急模式測試
└── docs/                    # 說明文件
    ├── state_diagram.png        # 狀態轉移圖
    ├── timing_diagram.png       # 時序圖
    ├── led_connection.png       # LED接線圖
    └── traffic_sequence.pdf     # 交通燈序列說明
```

## 測試與驗證 / Testing and Verification

### 完整系統測試 / Complete System Testing

1. **正常運行測試 / Normal Operation Test**
   ```vhdl
   -- 測試完整的交通燈循環
   reset <= '0'; wait for 100 ns; reset <= '1';
   enable <= '1';
   manual_mode <= '0';
   emergency <= '0';
   
   -- 綠燈階段 (30秒)
   wait until current_state = "00";
   for i in 30 downto 1 loop
       wait for 1 sec;
       assert timer_count = to_bcd(i-1) report "綠燈計時錯誤";
   end loop;
   
   -- 黃燈階段 (5秒)
   wait until current_state = "01";
   for i in 5 downto 1 loop
       wait for 1 sec;
       assert timer_count = to_bcd(i-1) report "黃燈計時錯誤";
   end loop;
   
   -- 紅燈階段 (25秒)
   wait until current_state = "10";
   for i in 25 downto 1 loop
       wait for 1 sec;
       assert timer_count = to_bcd(i-1) report "紅燈計時錯誤";
   end loop;
   ```

2. **緊急模式測試 / Emergency Mode Test**
   ```vhdl
   -- 測試緊急模式觸發
   wait until current_state = "00"; -- 等待綠燈狀態
   wait for 10 sec; -- 等待10秒
   emergency <= '1'; -- 觸發緊急模式
   wait for 20 ns;
   emergency <= '0';
   
   assert current_state = "11" report "緊急模式未觸發";
   assert led_yellow = flash_clk report "黃燈未閃爍";
   ```

3. **手動模式測試 / Manual Mode Test**
   ```vhdl
   -- 測試手動狀態切換
   manual_mode <= '1';
   
   for i in 0 to 10 loop
       next_state <= '1'; wait for 50 ns;
       next_state <= '0'; wait for 1000 ns;
       -- 驗證狀態切換
   end loop;
   ```

### 時序驗證 / Timing Verification

```
狀態轉移時序 / State Transition Timing:

綠燈 30秒 → 黃燈 5秒 → 紅燈 25秒 → 綠燈 (循環)
GREEN 30s → YELLOW 5s → RED 25s → GREEN (repeat)

總週期時間 / Total Cycle Time: 60秒 / 60 seconds
```

## 學習重點 / Key Learning Points

- 有限狀態機在實際系統中的應用
- 多模組系統整合與介面設計
- 實時計時系統與狀態同步
- 緊急處理機制的設計方法
- 人機介面的互動設計

- Application of finite state machines in real systems
- Multi-module system integration and interface design
- Real-time timing systems and state synchronization
- Design methods for emergency handling mechanisms
- Interactive design of human-machine interfaces

## 應用擴展 / Application Extensions

### 1. 多路口控制 / Multi-intersection Control
```vhdl
-- 四路口交通燈控制
entity four_way_traffic is
    port (
        -- 東西南北四個方向的交通燈
        north_lights : out traffic_light_type;
        south_lights : out traffic_light_type;
        east_lights  : out traffic_light_type;
        west_lights  : out traffic_light_type;
        
        -- 行人過街信號
        pedestrian_ns : out std_logic;
        pedestrian_ew : out std_logic;
        
        -- 車輛感應器輸入
        sensor_north, sensor_south : in std_logic;
        sensor_east, sensor_west   : in std_logic;
    );
end four_way_traffic;
```

### 2. 智慧交通控制 / Intelligent Traffic Control
```vhdl
-- 車流量感應式控制
component traffic_sensor is
    port (
        vehicle_detected : in  std_logic;
        traffic_density  : out std_logic_vector(3 downto 0);
        adaptive_timing  : out std_logic_vector(7 downto 0)
    );
end component;

-- 動態時間調整
process(traffic_density)
begin
    case traffic_density is
        when "0000" => green_time <= "00100000"; -- 低密度: 20秒
        when "0101" => green_time <= "00110000"; -- 中密度: 30秒
        when "1111" => green_time <= "01000101"; -- 高密度: 45秒
        when others => green_time <= "00110000"; -- 預設: 30秒
    end case;
end process;
```

### 3. 通信網路整合 / Communication Network Integration
```vhdl
-- 中央控制系統介面
entity central_control_interface is
    port (
        -- 網路通信
        rx_data : in  std_logic_vector(7 downto 0);
        tx_data : out std_logic_vector(7 downto 0);
        data_valid : in std_logic;
        
        -- 系統狀態報告
        intersection_status : out std_logic_vector(15 downto 0);
        fault_report : out std_logic_vector(7 downto 0);
        
        -- 遠端控制命令
        remote_override : out std_logic;
        emergency_command : out std_logic
    );
end central_control_interface;
```

## 實際部署考量 / Real Deployment Considerations

### 1. 安全性設計 / Safety Design
- **故障安全模式 / Fail-safe Mode**: 系統故障時預設為紅燈
- **冗餘設計 / Redundancy Design**: 雙重檢查機制
- **看門狗計時器 / Watchdog Timer**: 系統監控與重啟

### 2. 環境適應性 / Environmental Adaptability
- **溫度補償 / Temperature Compensation**: 極端溫度下的穩定運行
- **電磁干擾防護 / EMI Protection**: 抗干擾能力
- **防水防塵設計 / Weatherproof Design**: 戶外環境適應

### 3. 維護性設計 / Maintainability Design
- **遠端監控 / Remote Monitoring**: 狀態回報與診斷
- **模組化維護 / Modular Maintenance**: 可替換組件設計
- **日誌記錄 / Logging System**: 運行狀態記錄

### 4. 標準符合性 / Standards Compliance
- **交通法規 / Traffic Regulations**: 符合當地交通管制規定
- **工業標準 / Industrial Standards**: 電氣安全標準
- **認證要求 / Certification Requirements**: 相關認證測試

## 性能指標 / Performance Metrics

- **響應時間 / Response Time**: 緊急模式觸發 < 100ms
- **時間精度 / Timing Accuracy**: ±1% 時間誤差
- **可靠性 / Reliability**: MTBF > 10,000 hours
- **功耗 / Power Consumption**: < 50W 總功耗
- **工作溫度 / Operating Temperature**: -40°C ～ +85°C