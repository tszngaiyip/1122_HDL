# Lab 08 - 移位暫存器與計數器 / Shift Register & Counter

## 實驗目標 / Objective

使用VHDL製作：
1. 並串接輸入/並串接輸出移位暫存器設計
2. 非同步清除之2位元同步上數計數器
並製作testbench進行功能驗證

Design using VHDL:
1. Parallel-in/Serial-out shift register design
2. 2-bit synchronous up counter with asynchronous clear
And create testbench for functional verification

## 第一部分：移位暫存器 / Part 1: Shift Register

### 功能描述 / Functionality Description

**並串接輸入/並串接輸出移位暫存器 (PISO/PISO Shift Register)**

- **並列載入 / Parallel Load**: 同時載入多位元資料
- **串列輸出 / Serial Output**: 逐位元輸出資料
- **移位控制 / Shift Control**: 控制移位方向和時機

### 設計規格 / Design Specifications

```vhdl
entity shift_register is
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        load        : in  std_logic;
        shift_en    : in  std_logic;
        parallel_in : in  std_logic_vector(7 downto 0);
        serial_out  : out std_logic;
        parallel_out: out std_logic_vector(7 downto 0)
    );
end shift_register;
```

### 操作模式 / Operation Modes

| load | shift_en | 動作 / Action |
|------|----------|---------------|
| 1    | X        | 並列載入 / Parallel load |
| 0    | 1        | 右移一位 / Right shift by 1 |
| 0    | 0        | 保持 / Hold |

## 第二部分：同步計數器 / Part 2: Synchronous Counter

### 功能描述 / Functionality Description

**2位元同步上數計數器 (2-bit Synchronous Up Counter)**

- **計數範圍 / Count Range**: 00 → 01 → 10 → 11 → 00 (循環)
- **同步操作 / Synchronous Operation**: 所有觸發器同時更新
- **非同步清除 / Asynchronous Clear**: 立即重置為 00

### 設計規格 / Design Specifications

```vhdl
entity sync_counter is
    port (
        clk     : in  std_logic;
        reset   : in  std_logic;
        enable  : in  std_logic;
        count   : out std_logic_vector(1 downto 0)
    );
end sync_counter;
```

### 狀態轉移 / State Transitions

```
reset = '1' → count = "00" (立即 / immediate)
reset = '0', enable = '1' → count 遞增 / increment
reset = '0', enable = '0' → count 保持 / hold
```

## VHDL 實作要點 / VHDL Implementation Key Points

### 1. 移位暫存器實作 / Shift Register Implementation

```vhdl
architecture behavioral of shift_register is
    signal shift_reg : std_logic_vector(7 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            shift_reg <= (others => '0');
        elsif rising_edge(clk) then
            if load = '1' then
                shift_reg <= parallel_in;
            elsif shift_en = '1' then
                shift_reg <= '0' & shift_reg(7 downto 1);
            end if;
        end if;
    end process;
    
    serial_out <= shift_reg(0);
    parallel_out <= shift_reg;
end behavioral;
```

### 2. 同步計數器實作 / Synchronous Counter Implementation

```vhdl
architecture behavioral of sync_counter is
    signal count_int : std_logic_vector(1 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            count_int <= "00";
        elsif rising_edge(clk) then
            if enable = '1' then
                count_int <= std_logic_vector(unsigned(count_int) + 1);
            end if;
        end if;
    end process;
    
    count <= count_int;
end behavioral;
```

## 測試策略 / Testing Strategy

### 移位暫存器測試 / Shift Register Testing

1. **並列載入測試 / Parallel Load Test**
   - 載入各種資料模式
   - 驗證並列輸出正確性

2. **串列移位測試 / Serial Shift Test**
   - 連續移位操作
   - 驗證串列輸出序列

3. **控制信號測試 / Control Signal Test**
   - load 和 shift_en 的優先權
   - reset 功能驗證

### 計數器測試 / Counter Testing

1. **基本計數測試 / Basic Count Test**
   - 完整計數循環 (00→01→10→11→00)
   - enable 控制功能

2. **重置測試 / Reset Test**
   - 非同步清除功能
   - 在不同計數值時重置

3. **邊界條件測試 / Boundary Condition Test**
   - 最大值溢位行為
   - enable 信號時序

## 檔案結構 / File Structure

```
lab08/
├── README.md              # 本說明文件 / This README
├── src/                  # 源碼檔案 / Source files
│   ├── shift_register.vhd    # 移位暫存器模組
│   ├── sync_counter.vhd      # 同步計數器模組
│   ├── shift_reg_tb.vhd      # 移位暫存器 testbench
│   └── counter_tb.vhd        # 計數器 testbench
├── *.qpf                 # Quartus 專案檔案
├── simulation/           # 模擬檔案 / Simulation files
│   ├── shift_reg_wave.do     # 移位暫存器波形
│   └── counter_wave.do       # 計數器波形
└── docs/                # 說明文件 / Documentation
    ├── timing_diagram.png    # 時序圖
    └── functional_table.pdf # 功能表
```

## 學習重點 / Key Learning Points

- 移位暫存器的設計原理和應用
- 同步與非同步電路的差異
- VHDL 中的並列與串列資料處理
- 計數器的設計方法和狀態管理
- 控制信號的優先權設計

- Design principles and applications of shift registers
- Differences between synchronous and asynchronous circuits
- Parallel and serial data processing in VHDL
- Counter design methods and state management
- Priority design of control signals

## 應用實例 / Application Examples

### 移位暫存器應用 / Shift Register Applications
- 串列通信界面 / Serial communication interfaces
- 資料格式轉換 / Data format conversion
- 數位濾波器 / Digital filters
- 序列產生器 / Sequence generators

### 計數器應用 / Counter Applications
- 時序控制器 / Timing controllers
- 頻率分頻器 / Frequency dividers
- 位址產生器 / Address generators
- 事件計數器 / Event counters

## 設計挑戰 / Design Challenges

1. **功能整合 / Function Integration**
   - 將兩個模組整合為單一設計
   - 共用控制信號設計

2. **效能最佳化 / Performance Optimization**
   - 最小化傳播延遲
   - 降低功耗設計

3. **可擴展性 / Scalability**
   - 支援可變寬度設計
   - 可配置計數範圍