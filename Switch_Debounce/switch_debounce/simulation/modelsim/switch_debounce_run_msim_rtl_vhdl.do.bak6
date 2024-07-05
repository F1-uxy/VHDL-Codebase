transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {/home/cflux/Documents/Code/Russell Merrick Book/Switch_Debounce/switch_debounce/debounce_filter.vhd}
vcom -2008 -work work {/home/cflux/Documents/Code/Russell Merrick Book/Switch_Debounce/switch_debounce/led_toggle_project.vhd}
vcom -2008 -work work {/home/cflux/Documents/Code/Russell Merrick Book/Switch_Debounce/switch_debounce/switch_debounce.vhd}

vcom -2008 -work work {/home/cflux/Documents/Code/Russell Merrick Book/Switch_Debounce/switch_debounce/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Debounce_Filter_TB

add wave *
view structure
view signals
run -all
