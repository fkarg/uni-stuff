transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/datadisk/Coding/uni-stuff/hwp/aufg-06/Ultrasound_controller_restored/vhdl/ultrasound_controller.vhd}

vcom -93 -work work {/datadisk/Coding/uni-stuff/hwp/aufg-06/Ultrasound_controller_restored/simulation/modelsim/ultrasound_controller.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  ultrasound_controller_vhd_tst

add wave *
view structure
view signals
run 100 ms
