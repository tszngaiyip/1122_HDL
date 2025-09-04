# Lab 06 加分 - 序列偵測器 FSM / Sequence Detector FSM

## 實驗目標 / Objective

使用VHDL製作序列偵測器有限狀態機，能夠搜尋字串 "110"

Implement a sequence detector finite state machine that can search for the string "110" using VHDL

## 功能描述 / Functionality Description

本序列偵測器具有以下特性：

This sequence detector has the following characteristics:

- **目標序列 / Target Sequence**: "110"
- **輸入方式 / Input Method**: str_in (串列輸入 / serial input)
- **輸出方式 / Output Method**: str_out (平行輸出 / parallel output)
- **偵測指示 / Detection Indicator**: match 信號

### 運作範例 / Operation Examples

```
str_out: 100  →  match: 0 (未匹配 / No match)
str_out: 110  →  match: 1 (匹配成功 / Match found)
```

![circuit](circuit.png)

## 狀態機設計 / State Machine Design

### 狀態定義 / State Definition

本設計採用 Moore 狀態機架構：

This design uses Moore state machine architecture:

| 狀態 / State | 描述 / Description | 已偵測序列 / Detected Sequence |
|-------------|-------------------|------------------------------|
| S0 (IDLE)   | 初始狀態 / Initial state | "" (空 / Empty) |
| S1          | 偵測到第一個 '1' / First '1' detected | "1" |
| S2          | 偵測到 "11" / "11" detected | "11" |
| S3 (MATCH)  | 偵測到 "110" / "110" detected | "110" |

### 狀態轉移圖 / State Transition Diagram

```
       0        1        0
S0 -----> S0    S0 -----> S1    S1 -----> S0
 ^                        |               |
 |                        | 1             | 1
 |                        v               v
 |                       S2 -----> S3    S2
 |                        | 0      ^      |
 |                        v        |      | 1
 +------------------------+        +------+
                0
```

### 輸出邏輯 / Output Logic

- **match = '1'**: 當前狀態為 S3 (MATCH)
- **match = '0'**: 其他所有狀態

## VHDL 實作要點 / VHDL Implementation Key Points

### 1. 實體宣告 / Entity Declaration

```vhdl
entity sequence_detector is
    port (
        clk     : in  std_logic;
        reset   : in  std_logic;
        str_in  : in  std_logic;
        str_out : out std_logic_vector(2 downto 0);
        match   : out std_logic
    );
end sequence_detector;
```

### 2. 狀態型態定義 / State Type Definition

```vhdl
type state_type is (S0, S1, S2, S3);
signal current_state, next_state : state_type;
signal shift_reg : std_logic_vector(2 downto 0);
```

### 3. 主要程序 / Main Processes

- **狀態暫存器程序 / State Register Process**
- **次態邏輯程序 / Next State Logic Process**
- **輸出邏輯程序 / Output Logic Process**
- **移位暫存器程序 / Shift Register Process**

## 檔案結構 / File Structure

```
lab06_加分/
├── README.md              # 本說明文件 / This README
├── circuit.png            # 電路圖 / Circuit diagram
├── *.vhd                 # VHDL 源碼檔案 / VHDL source files
│   ├── seq_detector.vhd  # 序列偵測器主模組
│   └── seq_detector_tb.vhd # Testbench 檔案
├── *.qpf                 # Quartus 專案檔 / Quartus project file
├── simulation/           # 模擬檔案 / Simulation files
│   ├── wave.do          # ModelSim 波形設定
│   └── testcase.txt     # 測試案例
└── docs/                # 說明文件 / Documentation
    ├── state_diagram.png    # 狀態圖
    └── waveform_analysis.png # 波形分析
```

## 測試策略 / Testing Strategy

### 1. 基本測試案例 / Basic Test Cases

```
輸入序列 / Input Sequence: 1101101110
預期結果 / Expected Result:
- 位置 3: 匹配 "110"
- 位置 6: 匹配 "110" 
- 位置 9: 匹配 "110"
```

### 2. 邊界測試案例 / Boundary Test Cases

- 連續匹配情況 / Consecutive matches
- 部分匹配重疊 / Partial match overlaps
- 最短和最長測試序列 / Shortest and longest test sequences

### 3. 錯誤測試案例 / Error Test Cases

- 不匹配序列 / Non-matching sequences
- 隨機輸入序列 / Random input sequences
- 重置功能測試 / Reset functionality test

## 學習重點 / Key Learning Points

- 序列偵測器的設計原理
- 狀態機的重疊偵測問題
- 移位暫存器與狀態機的結合應用
- VHDL 中字串處理技術
- 實際應用中的數據流處理

- Design principles of sequence detectors
- Overlapping detection issues in state machines
- Combined application of shift registers and state machines
- String processing techniques in VHDL
- Data stream processing in practical applications

## 應用領域 / Application Areas

- 通信協定解析 / Communication protocol parsing
- 數據封包識別 / Data packet identification
- 錯誤檢測與修正 / Error detection and correction
- 數位信號處理 / Digital signal processing
- 網路安全監控 / Network security monitoring

## 進階挑戰 / Advanced Challenges

- 支援多種序列同時偵測 / Support multiple sequence detection simultaneously
- 可重新配置的序列模式 / Reconfigurable sequence patterns
- 添加序列長度可變功能 / Add variable sequence length functionality
- 優化硬體資源使用 / Optimize hardware resource usage