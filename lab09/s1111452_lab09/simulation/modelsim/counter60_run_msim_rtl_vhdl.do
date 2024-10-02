transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Administrator/Downloads/counter60/counter60.vhd}
vcom -93 -work work {C:/Users/Administrator/Downloads/counter60/counter6.vhd}
vcom -93 -work work {C:/Users/Administrator/Downloads/counter60/counter10.vhd}

vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Downloads/counter60 {C:/Users/Administrator/Downloads/counter60/test.v}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneiii -L rtl_work -L work -voptargs="+acc" test

add wave *
view structure
view signals
run -all
