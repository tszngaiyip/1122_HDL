# 1122 數位系統實驗（二）

> **課程代碼**: 1122  
> **語言**: 繁體中文  
> **程式語言**: VHDL

## 課程簡介

此為1122 - 數位系統實驗（二）的作業和報告之程式碼，使用VHDL語言進行數位電路設計與實作。

## 實驗內容

| Lab | 主題 | 描述 |
|-----|-----|------|
| Lab 04 | 布林函數實作 | SOP/POS 方法實作布林函數 |
| Lab 04 (Bonus) | 八對三編碼器 | 編碼器電路設計 |
| Lab 05 | 組合邏輯電路 | 基本組合邏輯電路設計 |
| Lab 05 (Bonus) | 進階組合電路 | 複雜組合邏輯實作 |
| Lab 06 | 狀態機 | Moore machine 二進制編碼狀態機 |
| Lab 06 (加分) | 序列偵測器 | FSM 序列偵測器設計 |
| Lab 07 | ALU設計 | 算數邏輯運算單元設計 |
| Lab 08 | 移位暫存器與計數器 | 移位暫存器與同步計數器 |
| Lab 09 | 60模計數器 | 非同步清除同步載入計數器 |
| Lab 10 | LED控制器 | LED 控制電路設計 |
| Lab 11 | PWM呼吸燈 | 自動調節LED亮度的呼吸燈 |
| Lab 12 | 跑馬燈 | LED 週期性位移電路 |
| Lab 13 | 分秒計時器 | 七段顯示器計時器 |
| Lab 14 | 0-99計數器 | 七段顯示器計數器 |
| Lab 15 | 紅綠燈控制 | 紅綠燈與倒數計時器 |

## 技術要求

- **開發工具**: Intel Quartus Prime / ModelSim
- **目標硬體**: FPGA Development Board
- **程式語言**: VHDL
- **測試方法**: Testbench simulations

## 檔案結構

```
1122_HDL/
├── README.md                 # 本說明文件
├── lab04/                   # Lab 4: 布林函數
├── lab04_bonus/             # Lab 4 Bonus: 編碼器
├── lab05/                   # Lab 5: 組合邏輯
├── lab05_bonus/             # Lab 5 Bonus: 進階組合電路
├── lab06/                   # Lab 6: 狀態機
├── lab06_加分/               # Lab 6 Bonus: 序列偵測器
├── lab07/                   # Lab 7: ALU設計
├── lab08/                   # Lab 8: 移位暫存器
├── lab09/                   # Lab 9: 計數器
├── lab10/                   # Lab 10: LED控制器
├── lab11/                   # Lab 11: 呼吸燈
├── lab12/                   # Lab 12: 跑馬燈
├── lab13/                   # Lab 13: 計時器
├── lab14/                   # Lab 14: 計數器
└── lab15/                   # Lab 15: 紅綠燈
```

## 使用說明

1. **開啟專案**: 使用 Quartus Prime 開啟各實驗資料夾中的 `.qpf` 專案檔
2. **編譯程式**: 執行 Analysis & Synthesis 以及 Full Compilation
3. **模擬測試**: 使用 ModelSim 執行 testbench 進行功能驗證
4. **硬體實作**: 將編譯後的檔案下載至 FPGA 開發板

## 作者資訊

- **課程**: 1122 數位系統實驗（二）
- **撰寫語言**: VHDL
- **最後更新**: 2024

---
*此專案為學術用途*