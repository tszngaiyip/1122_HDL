# Lab 06 - 狀態機設計 / State Machine Design

## 實驗目標 / Objective

使用VHDL語言製作Moore machine with binary encoded state machine

Design a Moore machine with binary encoded states using VHDL

## 狀態機概念 / State Machine Concepts

### Moore Machine 特性 / Moore Machine Characteristics

Moore 狀態機是一種有限狀態機 (FSM)，具有以下特性：

Moore machine is a finite state machine (FSM) with the following characteristics:

- **輸出只依賴於當前狀態 / Output depends only on current state**
- **狀態轉移由輸入決定 / State transitions determined by inputs**
- **二進制編碼狀態 / Binary encoded states**
- **同步狀態轉移 / Synchronous state transitions**

## 設計規格 / Design Specifications

### 狀態編碼 / State Encoding

本實驗使用二進制編碼方式來表示狀態：

This lab uses binary encoding to represent states:

```
State 0: 00
State 1: 01  
State 2: 10
State 3: 11
```

### 設計要素 / Design Elements

1. **狀態暫存器 / State Register**
   - 儲存當前狀態
   - 時脈同步更新
   - Store current state
   - Clock-synchronized updates

2. **次態邏輯 / Next State Logic**
   - 根據當前狀態和輸入決定次態
   - 組合邏輯電路實作
   - Determine next state based on current state and inputs
   - Implemented as combinational logic

3. **輸出邏輯 / Output Logic**
   - 根據當前狀態產生輸出
   - 僅依賴狀態，不依賴輸入
   - Generate output based on current state
   - Depends only on state, not inputs

## VHDL 實作架構 / VHDL Implementation Architecture

```vhdl
entity moore_machine is
    port (
        clk     : in  std_logic;
        reset   : in  std_logic;
        input   : in  std_logic;
        output  : out std_logic_vector(1 downto 0)
    );
end moore_machine;

architecture behavioral of moore_machine is
    type state_type is (S0, S1, S2, S3);
    signal current_state, next_state : state_type;
begin
    -- 狀態暫存器 / State register
    -- 次態邏輯 / Next state logic  
    -- 輸出邏輯 / Output logic
end behavioral;
```

## 檔案結構 / File Structure

```
lab06/
├── README.md          # 本說明文件 / This README
├── *.vhd             # VHDL 源碼檔案 / VHDL source files
│   ├── moore_fsm.vhd # 主要狀態機模組
│   └── *_tb.vhd      # Testbench 檔案
├── *.qpf             # Quartus 專案檔 / Quartus project file
├── simulation/       # 模擬檔案 / Simulation files
└── docs/             # 說明文件 / Documentation
    ├── state_diagram.png  # 狀態圖
    └── timing_diagram.png # 時序圖
```

## 設計流程 / Design Flow

1. **狀態圖設計 / State Diagram Design**
   - 定義所有狀態和轉移條件
   - 確定輸出對應關係
   - Define all states and transition conditions
   - Determine output mappings

2. **狀態表建立 / State Table Creation**
   - 列出當前狀態、輸入、次態和輸出
   - 驗證狀態轉移的完整性
   - List current state, input, next state, and output
   - Verify completeness of state transitions

3. **VHDL 編碼 / VHDL Coding**
   - 實作三個主要部分：狀態暫存器、次態邏輯、輸出邏輯
   - 加入重置功能
   - Implement three main parts: state register, next state logic, output logic
   - Add reset functionality

4. **模擬驗證 / Simulation Verification**
   - 測試所有可能的狀態轉移
   - 驗證輸出正確性
   - Test all possible state transitions
   - Verify output correctness

## 學習重點 / Key Learning Points

- 有限狀態機的設計方法
- Moore 機與 Mealy 機的差異
- 二進制狀態編碼技術
- VHDL 中的列舉型態使用
- 同步電路設計原則

- Finite state machine design methodology
- Differences between Moore and Mealy machines
- Binary state encoding techniques
- Enumerated types usage in VHDL
- Synchronous circuit design principles

## 測試與驗證 / Testing and Verification

### 測試項目 / Test Items

- [x] 基本狀態轉移測試
- [x] 重置功能測試  
- [x] 輸出正確性驗證
- [x] 邊界條件測試
- [x] 時序特性分析

### 驗證方法 / Verification Methods

- **功能模擬 / Functional simulation**
- **時序模擬 / Timing simulation**  
- **波形分析 / Waveform analysis**
- **狀態覆蓋率檢查 / State coverage check**