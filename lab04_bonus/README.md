# Lab 04 Bonus - 八對三編碼器 / 8-to-3 Encoder

## 實驗目標 / Objective

使用VHDL語言設計並實作八對三編碼器電路

Design and implement an 8-to-3 encoder circuit using VHDL

## 電路功能 / Circuit Functionality

八對三編碼器是一個數位邏輯電路，具有以下特性：

The 8-to-3 encoder is a digital logic circuit with the following characteristics:

- **輸入 / Inputs**: 8 個輸入線 (I₀ ~ I₇)
- **輸出 / Outputs**: 3 個輸出線 (Y₀, Y₁, Y₂) 
- **功能 / Function**: 將 8 個輸入中的有效輸入位置編碼成 3-bit 二進制輸出

## 真值表 / Truth Table

| I₇ | I₆ | I₅ | I₄ | I₃ | I₂ | I₁ | I₀ | Y₂ | Y₁ | Y₀ |
|----|----|----|----|----|----|----|----|----|----|----|
| 0  | 0  | 0  | 0  | 0  | 0  | 0  | 1  | 0  | 0  | 0  |
| 0  | 0  | 0  | 0  | 0  | 0  | 1  | 0  | 0  | 0  | 1  |
| 0  | 0  | 0  | 0  | 0  | 1  | 0  | 0  | 0  | 1  | 0  |
| 0  | 0  | 0  | 0  | 1  | 0  | 0  | 0  | 0  | 1  | 1  |
| 0  | 0  | 0  | 1  | 0  | 0  | 0  | 0  | 1  | 0  | 0  |
| 0  | 0  | 1  | 0  | 0  | 0  | 0  | 0  | 1  | 0  | 1  |
| 0  | 1  | 0  | 0  | 0  | 0  | 0  | 0  | 1  | 1  | 0  |
| 1  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 1  | 1  | 1  |

## 設計要點 / Design Considerations

- **優先編碼 / Priority Encoding**: 當多個輸入同時有效時，優先處理最高位元
- **無效輸入處理 / Invalid Input Handling**: 當所有輸入都為 0 時的輸出定義
- **組合邏輯設計 / Combinational Logic Design**: 純組合邏輯電路，無時脈信號

## 檔案結構 / File Structure

```
lab04_bonus/
├── README.md          # 本說明文件 / This README
├── *.vhd             # VHDL 源碼檔案 / VHDL source files
├── *.qpf             # Quartus 專案檔 / Quartus project file
└── simulation/       # 模擬檔案 / Simulation files
```

## 使用說明 / Usage Instructions

1. **開啟專案 / Open Project**: 使用 Quartus Prime 開啟專案檔
2. **檢視程式碼 / Review Code**: 檢查 VHDL 編碼器實作
3. **編譯驗證 / Compile & Verify**: 執行編譯並檢查結果
4. **功能測試 / Functional Test**: 使用 testbench 驗證各種輸入組合

## 學習重點 / Key Learning Points

- 編碼器的基本概念與應用
- VHDL 組合邏輯電路設計
- 優先編碼邏輯的實作
- 數位系統中的資料編碼技術

- Basic concepts and applications of encoders
- VHDL combinational logic circuit design  
- Implementation of priority encoding logic
- Data encoding techniques in digital systems

## 應用領域 / Applications

- 鍵盤掃描電路 / Keyboard scanning circuits
- 資料壓縮系統 / Data compression systems
- 中斷控制器 / Interrupt controllers
- 位址解碼器 / Address decoders