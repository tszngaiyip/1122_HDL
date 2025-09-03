# Lab 07 - ALU 設計 / ALU Design

## 實驗目標 / Objective

使用VHDL製作ALU算數邏輯運算單元，並製作testbench進行功能驗證

Design an ALU (Arithmetic Logic Unit) using VHDL and create testbench for functional verification

## ALU 概述 / ALU Overview

算數邏輯運算單元(ALU)是處理器的核心組件，負責執行各種算數和邏輯運算。

The Arithmetic Logic Unit (ALU) is a core component of processors, responsible for performing various arithmetic and logical operations.

### 功能特性 / Functional Features

- **算數運算 / Arithmetic Operations**: 加法、減法、乘法等
- **邏輯運算 / Logic Operations**: AND、OR、XOR、NOT等  
- **比較運算 / Comparison Operations**: 等於、大於、小於等
- **移位運算 / Shift Operations**: 左移、右移等

## 設計規格 / Design Specifications

### 輸入信號 / Input Signals

```vhdl
A, B        : in  std_logic_vector(7 downto 0);  -- 8-bit 運算元
ALU_Sel     : in  std_logic_vector(3 downto 0);  -- 4-bit 操作碼
```

### 輸出信號 / Output Signals

```vhdl
ALU_Out     : out std_logic_vector(7 downto 0);  -- 8-bit 運算結果
CarryOut    : out std_logic;                     -- 進位輸出
Zero        : out std_logic;                     -- 零旗標
Overflow    : out std_logic;                     -- 溢位旗標
```

### 運算功能表 / Operation Function Table

| ALU_Sel | 運算 / Operation | 功能描述 / Function Description |
|---------|------------------|--------------------------------|
| 0000    | A + B           | 8-bit 加法 / 8-bit Addition |
| 0001    | A - B           | 8-bit 減法 / 8-bit Subtraction |
| 0010    | A * B           | 8-bit 乘法 / 8-bit Multiplication |
| 0011    | A / B           | 8-bit 除法 / 8-bit Division |
| 0100    | A AND B         | 位元 AND 運算 |
| 0101    | A OR B          | 位元 OR 運算 |
| 0110    | A XOR B         | 位元 XOR 運算 |
| 0111    | NOT A           | 位元 NOT 運算 |
| 1000    | A << 1          | A 左移一位 / Left shift A by 1 |
| 1001    | A >> 1          | A 右移一位 / Right shift A by 1 |
| 1010    | A == B          | 相等比較 / Equality comparison |
| 1011    | A > B           | 大於比較 / Greater than comparison |
| 1100    | A < B           | 小於比較 / Less than comparison |
| 1101    | Reserved        | 保留 / Reserved |
| 1110    | Reserved        | 保留 / Reserved |
| 1111    | Reserved        | 保留 / Reserved |

## VHDL 實作架構 / VHDL Implementation Architecture

### 1. 實體宣告 / Entity Declaration

```vhdl
entity ALU is
    port (
        A, B     : in  std_logic_vector(7 downto 0);
        ALU_Sel  : in  std_logic_vector(3 downto 0);
        ALU_Out  : out std_logic_vector(7 downto 0);
        CarryOut : out std_logic;
        Zero     : out std_logic;
        Overflow : out std_logic
    );
end ALU;
```

### 2. 架構設計 / Architecture Design

```vhdl
architecture Behavioral of ALU is
    signal ALU_Result : std_logic_vector(8 downto 0); -- 9-bit for overflow
    signal temp_result : std_logic_vector(7 downto 0);
begin
    process(A, B, ALU_Sel)
    begin
        case ALU_Sel is
            when "0000" => -- Addition
                ALU_Result <= ('0' & A) + ('0' & B);
            when "0001" => -- Subtraction
                ALU_Result <= ('0' & A) - ('0' & B);
            -- 其他運算... / Other operations...
        end case;
    end process;
    
    -- 旗標邏輯 / Flag logic
    ALU_Out <= ALU_Result(7 downto 0);
    CarryOut <= ALU_Result(8);
    Zero <= '1' when ALU_Result(7 downto 0) = "00000000" else '0';
end Behavioral;
```

## 測試規劃 / Testing Plan

### 1. Testbench 設計 / Testbench Design

```vhdl
entity ALU_tb is
end ALU_tb;

architecture test of ALU_tb is
    component ALU
        port (
            A, B     : in  std_logic_vector(7 downto 0);
            ALU_Sel  : in  std_logic_vector(3 downto 0);
            ALU_Out  : out std_logic_vector(7 downto 0);
            CarryOut : out std_logic;
            Zero     : out std_logic;
            Overflow : out std_logic
        );
    end component;
    
    signal A, B, ALU_Out : std_logic_vector(7 downto 0);
    signal ALU_Sel : std_logic_vector(3 downto 0);
    signal CarryOut, Zero, Overflow : std_logic;
begin
    UUT: ALU port map (A, B, ALU_Sel, ALU_Out, CarryOut, Zero, Overflow);
    
    process
    begin
        -- 測試案例 / Test cases
        wait;
    end process;
end test;
```

### 2. 測試案例 / Test Cases

#### 算數運算測試 / Arithmetic Operation Tests
- 正常加法 (無進位) / Normal addition (no carry)
- 進位加法 / Addition with carry
- 正常減法 / Normal subtraction  
- 借位減法 / Subtraction with borrow
- 溢位情況 / Overflow conditions

#### 邏輯運算測試 / Logic Operation Tests
- 各種邏輯運算的真值表驗證
- Truth table verification for logic operations

#### 邊界條件測試 / Boundary Condition Tests
- 最大值運算 / Maximum value operations
- 最小值運算 / Minimum value operations
- 零值運算 / Zero value operations

## 檔案結構 / File Structure

```
lab07/
├── README.md          # 本說明文件 / This README
├── src/              # 源碼檔案 / Source files
│   ├── ALU.vhd       # ALU 主模組
│   └── ALU_tb.vhd    # Testbench 檔案
├── *.qpf             # Quartus 專案檔 / Quartus project file
├── simulation/       # 模擬檔案 / Simulation files
│   ├── wave.do       # ModelSim 波形設定
│   └── test_vectors.txt # 測試向量
└── docs/             # 說明文件 / Documentation
    ├── alu_block_diagram.png # ALU 方塊圖
    └── timing_analysis.pdf   # 時序分析報告
```

## 學習重點 / Key Learning Points

- ALU 的基本設計原理和架構
- VHDL 中算數和邏輯運算的實作
- 旗標信號的產生和使用
- 綜合 testbench 的設計方法
- 數位系統中溢位和進位的處理

- Basic design principles and architecture of ALU
- Implementation of arithmetic and logic operations in VHDL
- Generation and usage of flag signals
- Comprehensive testbench design methodology
- Handling overflow and carry in digital systems

## 設計挑戰 / Design Challenges

### 1. 效能最佳化 / Performance Optimization
- 減少關鍵路徑延遲 / Reduce critical path delay
- 最佳化資源使用 / Optimize resource usage

### 2. 功能擴展 / Functional Extension
- 支援更多運算類型 / Support more operation types
- 增加浮點運算功能 / Add floating-point operations

### 3. 驗證完整性 / Verification Completeness
- 100% 代碼覆蓋率 / 100% code coverage
- 所有邊界條件測試 / All boundary condition tests

## 應用實例 / Application Examples

- 微處理器設計 / Microprocessor design
- 數位信號處理器 / Digital signal processors
- 計算機架構 / Computer architecture
- 嵌入式系統 / Embedded systems