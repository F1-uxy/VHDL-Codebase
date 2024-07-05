library ieee;
use ieee.std_logic_1164.all;
use std.env.finish;

entity t_ff_TB is
end entity t_ff_TB;

architecture test of t_ff_TB is
	signal s_Clr, s_Set : std_logic := '1';
	signal s_Clk, s_Q	  : std_logic := '0';
	
	
	begin
		s_Clk <= not s_Clk after 2ns;
		
		test_tff : entity work.t_ff 
			port map (
							i_Clk => s_Clk,
							i_Clr => s_Clr,
							i_Set => s_Set,
							o_Q 	=> s_Q
						 );
		
		process is-- A process is sequential, they execute each line sequentially
			begin
				report "Starting Testbench" severity NOTE;
				wait for 10ns;
				s_Set <= '0';
				wait until rising_edge(s_Clk);
				assert(s_Q = '0') report "Failed";
				finish;
		end process;
		
end architecture test;