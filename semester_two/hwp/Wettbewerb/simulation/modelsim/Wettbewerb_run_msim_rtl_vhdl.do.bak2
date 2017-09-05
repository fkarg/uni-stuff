transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/datadisk/Coding/uni-stuff/hwp/Wettbewerb/vhdl/Arduino-Kommunikation/uart_receiver.vhd}

vcom -93 -work work {/datadisk/Coding/uni-stuff/hwp/Wettbewerb/simulation/modelsim/uart_receiver.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  uart_receiver_vhd_tst

add wave *
view structure
view signals
run -all
