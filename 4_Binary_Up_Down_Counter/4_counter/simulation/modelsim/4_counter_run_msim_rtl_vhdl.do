transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/cflux/Documents/Code/VHDL-Codebase/4_Binary_Up_Down_Counter/4_counter/4_counter.vhd}

