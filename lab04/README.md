# Lab 04 - 布林函數實作 / Boolean Function Implementation

## 實驗目標 / Objective

使用VHDL語言實作布林函數 Y(A, B, C, D) = ∑(0, 1, 3, 4, 5, 8, 9, 11, 12, 14, 15)

Implement Boolean function Y(A, B, C, D) = ∑(0, 1, 3, 4, 5, 8, 9, 11, 12, 14, 15) using VHDL

## 實作方法 / Implementation Methods

本實驗使用兩種不同的方法來實作相同的布林函數：

This lab implements the same Boolean function using two different methods:

### 1. SOP (Sum of Products) 方法
- 將布林函數表示為乘積項的總和
- 對應每個使函數為真的輸入組合
- Express Boolean function as sum of product terms
- Corresponds to each input combination that makes the function true

### 2. POS (Product of Sums) 方法
- 將布林函數表示為總和項的乘積  
- 對應每個使函數為假的輸入組合的補集
- Express Boolean function as product of sum terms
- Corresponds to complement of input combinations that make the function false

## 檔案結構 / File Structure

```
lab04/
├── README.md           # 本說明文件 / This README
├── SOP/               # SOP 實作 / SOP Implementation
│   ├── *.vhd          # VHDL 源碼檔案
│   └── *.qpf          # Quartus 專案檔
└── POS/               # POS 實作 / POS Implementation
    ├── *.vhd          # VHDL 源碼檔案
    └── *.qpf          # Quartus 專案檔
```

## 輸入輸出規格 / Input/Output Specification

- **輸入 / Inputs**: A, B, C, D (4-bit)
- **輸出 / Output**: Y (1-bit)
- **邏輯 / Logic**: Y = 1 當輸入為 {0,1,3,4,5,8,9,11,12,14,15} 時

## 使用說明 / Usage Instructions

1. 使用 Quartus Prime 開啟 SOP 或 POS 資料夾中的專案檔
2. 編譯並驗證電路功能
3. 比較兩種實作方法的資源使用情況

1. Open project file in SOP or POS folder with Quartus Prime
2. Compile and verify circuit functionality  
3. Compare resource usage between two implementation methods

## 學習重點 / Key Learning Points

- 布林代數的 SOP 與 POS 表示法
- VHDL 組合邏輯電路設計
- 不同實作方法的效能比較

- Boolean algebra SOP and POS representations
- VHDL combinational logic circuit design
- Performance comparison of different implementation methods