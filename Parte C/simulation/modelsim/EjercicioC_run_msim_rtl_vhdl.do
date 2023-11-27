transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Leo/Desktop/Guia fpga/Parte B/D_FF.vhd}
vcom -93 -work work {C:/Users/Leo/Desktop/Guia fpga/Parte C/sumador.vhd}

vcom -93 -work work {C:/Users/Leo/Desktop/Guia fpga/Parte C/tb_ejC.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  tb_ejC

add wave *
view structure
view signals
run -all
