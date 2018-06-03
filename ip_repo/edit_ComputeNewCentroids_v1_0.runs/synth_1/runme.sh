#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/david/Apps/SDK/2017.4/bin:/home/david/Apps/Vivado/2017.4/ids_lite/ISE/bin/lin64:/home/david/Apps/Vivado/2017.4/bin
else
  PATH=/home/david/Apps/SDK/2017.4/bin:/home/david/Apps/Vivado/2017.4/ids_lite/ISE/bin/lin64:/home/david/Apps/Vivado/2017.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/david/Apps/Vivado/2017.4/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/david/Apps/Vivado/2017.4/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/david/Documents/CR-Project/ip_repo/edit_ComputeNewCentroids_v1_0.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log StreamCopIPCore_v1_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source StreamCopIPCore_v1_0.tcl
