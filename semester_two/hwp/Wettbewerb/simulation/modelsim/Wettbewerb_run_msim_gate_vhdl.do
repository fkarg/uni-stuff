transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Wettbewerb_6_1200mv_85c_slow.vho}

vcom -93 -work work {/datadisk/Coding/uni-stuff/hwp/Wettbewerb/simulation/modelsim/uart_receiver.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=Wettbewerb_6_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  uart_receiver_vhd_tst

add wave *
view structure
view signals
run -all
