@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Sat Dec 26 14:47:48 +0300 2020
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim ripple_carry_adder_tb_behav -key {Behavioral:sim_1:Functional:ripple_carry_adder_tb} -tclbatch ripple_carry_adder_tb.tcl -view E:/BATUHAN DOSYALAR/ICTECH/devler/devlerim/ripple_carry_adder_4-bit/ripple_carry_adder_tb_behav.wcfg -log simulate.log"
call xsim  ripple_carry_adder_tb_behav -key {Behavioral:sim_1:Functional:ripple_carry_adder_tb} -tclbatch ripple_carry_adder_tb.tcl -view E:/BATUHAN DOSYALAR/ICTECH/devler/devlerim/ripple_carry_adder_4-bit/ripple_carry_adder_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
