# 1122 數位系統實驗（二）/ Digital Systems Lab II

> **Course Code**: 1122  
> **Language**: Traditional Chinese / English  
> **Programming Language**: VHDL

## 課程簡介 / Course Description

此為1122 - 數位系統實驗（二）的作業和報告之程式碼，使用VHDL語言進行數位電路設計與實作。

This repository contains assignments and project code for 1122 Digital Systems Lab II, implementing digital circuit designs using VHDL.

## 實驗內容 / Lab Contents

| Lab | 主題 / Topic | 描述 / Description |
|-----|-------------|-------------------|
| Lab 04 | 布林函數實作 / Boolean Function Implementation | SOP/POS 方法實作布林函數 |
| Lab 04 (Bonus) | 八對三編碼器 / 8-to-3 Encoder | 編碼器電路設計 |
| Lab 05 | 組合邏輯電路 / Combinational Logic | 基本組合邏輯電路設計 |
| Lab 05 (Bonus) | 進階組合電路 / Advanced Combinational Circuit | 複雜組合邏輯實作 |
| Lab 06 | 狀態機 / State Machine | Moore machine 二進制編碼狀態機 |
| Lab 06 (加分) | 序列偵測器 / Sequence Detector | FSM 序列偵測器設計 |
| Lab 07 | ALU設計 / ALU Design | 算數邏輯運算單元設計 |
| Lab 08 | 移位暫存器與計數器 / Shift Register & Counter | 移位暫存器與同步計數器 |
| Lab 09 | 60模計數器 / Mod-60 Counter | 非同步清除同步載入計數器 |
| Lab 10 | LED控制器 / LED Controller | LED 控制電路設計 |
| Lab 11 | PWM呼吸燈 / PWM Breathing LED | 自動調節LED亮度的呼吸燈 |
| Lab 12 | 跑馬燈 / Shift LED | LED 週期性位移電路 |
| Lab 13 | 分秒計時器 / Minute-Second Timer | 七段顯示器計時器 |
| Lab 14 | 0-99計數器 / 0-99 Counter | 七段顯示器計數器 |
| Lab 15 | 紅綠燈控制 / Traffic Light Controller | 紅綠燈與倒數計時器 |

## 技術要求 / Technical Requirements

- **開發工具 / Development Tools**: Intel Quartus Prime / ModelSim
- **目標硬體 / Target Hardware**: FPGA Development Board
- **程式語言 / Programming Language**: VHDL
- **測試方法 / Testing**: Testbench simulations

## 檔案結構 / File Structure

```
1122_HDL/
├── README.md                 # 本說明文件 / This README
├── lab04/                   # Lab 4: 布林函數 / Boolean Functions
├── lab04_bonus/             # Lab 4 Bonus: 編碼器 / Encoder
├── lab05/                   # Lab 5: 組合邏輯 / Combinational Logic
├── lab05_bonus/             # Lab 5 Bonus: 進階組合電路
├── lab06/                   # Lab 6: 狀態機 / State Machine
├── lab06_加分/               # Lab 6 Bonus: 序列偵測器
├── lab07/                   # Lab 7: ALU設計 / ALU Design
├── lab08/                   # Lab 8: 移位暫存器 / Shift Register
├── lab09/                   # Lab 9: 計數器 / Counter
├── lab10/                   # Lab 10: LED控制器 / LED Controller
├── lab11/                   # Lab 11: 呼吸燈 / Breathing LED
├── lab12/                   # Lab 12: 跑馬燈 / Shift LED
├── lab13/                   # Lab 13: 計時器 / Timer
├── lab14/                   # Lab 14: 計數器 / Counter
└── lab15/                   # Lab 15: 紅綠燈 / Traffic Light
```

## 使用說明 / Usage Instructions

1. **開啟專案 / Open Project**: 使用 Quartus Prime 開啟各實驗資料夾中的 `.qpf` 專案檔
2. **編譯程式 / Compile**: 執行 Analysis & Synthesis 以及 Full Compilation
3. **模擬測試 / Simulation**: 使用 ModelSim 執行 testbench 進行功能驗證
4. **硬體實作 / Hardware Implementation**: 將編譯後的檔案下載至 FPGA 開發板

## 作者資訊 / Author Information

- **課程 / Course**: 1122 數位系統實驗（二）
- **撰寫語言 / Programming Language**: VHDL
- **最後更新 / Last Updated**: 2024

---
*此專案為學術用途 / This project is for academic purposes*