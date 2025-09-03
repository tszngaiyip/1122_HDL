# Lab 05 - 組合邏輯電路 / Combinational Logic Circuit

## 實驗目標 / Objective

使用VHDL語言完成指定電路圖中的組合邏輯電路設計

Complete the combinational logic circuit design shown in the circuit diagram using VHDL

## 電路描述 / Circuit Description

本實驗需要實作電路圖中所示的組合邏輯電路，包含：

This lab requires implementing the combinational logic circuit shown in the diagram, including:

- 多個邏輯閘的組合 / Multiple logic gate combinations
- 輸入信號的邏輯運算 / Logical operations on input signals  
- 組合邏輯輸出 / Combinational logic outputs

![circuit](circuit.png)

## 設計步驟 / Design Steps

1. **電路分析 / Circuit Analysis**
   - 分析電路圖中的邏輯閘類型和連接方式
   - 確定輸入輸出信號的關係
   - Analyze logic gate types and connections in the circuit diagram
   - Determine input-output signal relationships

2. **VHDL 設計 / VHDL Design**
   - 建立 entity 和 architecture
   - 定義輸入輸出埠 
   - 實作組合邏輯功能
   - Create entity and architecture
   - Define input/output ports
   - Implement combinational logic functions

3. **模擬驗證 / Simulation Verification**
   - 建立 testbench 測試電路
   - 驗證所有可能的輸入組合
   - Create testbench to test circuit
   - Verify all possible input combinations

## 輸入輸出規格 / Input/Output Specification

根據電路圖確定：
Based on circuit diagram:

- **輸入 / Inputs**: 根據電路圖定義 / As defined in circuit diagram
- **輸出 / Outputs**: 根據電路圖定義 / As defined in circuit diagram
- **邏輯關係 / Logic Relationship**: 依照電路圖的邏輯閘連接

## 檔案結構 / File Structure

```
lab05/
├── README.md          # 本說明文件 / This README
├── circuit.png        # 電路圖 / Circuit diagram
├── *.vhd             # VHDL 源碼檔案 / VHDL source files
├── *.qpf             # Quartus 專案檔 / Quartus project file
└── simulation/       # 模擬檔案 / Simulation files
    └── *_tb.vhd      # Testbench 檔案
```

## 使用說明 / Usage Instructions

1. **檢視電路圖 / Review Circuit Diagram**: 仔細分析 `circuit.png` 中的電路設計
2. **開啟專案 / Open Project**: 使用 Quartus Prime 開啟專案檔
3. **檢視實作 / Review Implementation**: 檢查 VHDL 程式碼實作
4. **執行模擬 / Run Simulation**: 使用 ModelSim 執行 testbench
5. **驗證功能 / Verify Functionality**: 確認輸出結果符合電路圖預期

## 學習重點 / Key Learning Points

- 從電路圖轉換為 VHDL 程式碼
- 組合邏輯電路的設計方法
- VHDL 中邏輯運算子的使用
- 測試向量的設計與驗證

- Converting circuit diagrams to VHDL code
- Design methods for combinational logic circuits
- Usage of logical operators in VHDL
- Design and verification of test vectors

## 設計驗證 / Design Verification

- 真值表驗證 / Truth table verification
- 時序模擬 / Timing simulation
- 功能正確性檢查 / Functional correctness check
- 延遲特性分析 / Delay characteristics analysis