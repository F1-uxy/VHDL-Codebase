transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Fluxy/Documents/Code/VHDL-Codebase/NCO_8/nco8/nco.vhd}

