@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Wed May 13 18:43:23 +1200 2020
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 5d170cc69bd840dd9024315db9e7e7e8 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Quad_4_bit_counter_TB_behav xil_defaultlib.Quad_4_bit_counter_TB -log elaborate.log"
call xelab  -wto 5d170cc69bd840dd9024315db9e7e7e8 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Quad_4_bit_counter_TB_behav xil_defaultlib.Quad_4_bit_counter_TB -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
