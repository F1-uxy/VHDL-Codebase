library ieee;
use ieee.std_logic_1164.all;

entity t_ff is
	port (
				i_Clk : in  std_logic;
				i_Clr : in  std_logic;
				i_Set : in  std_logic;
				o_Q	: out std_logic
			);


end entity t_ff;

architecture toggle of t_ff is
	
	signal s_Q : std_logic := '0';
	
	begin
		process(i_Clk, i_Set, i_Clr) is
			begin
				if i_Clr = '0' then
					s_Q <= '0';
					
				elsif i_Set = '0' then
					s_Q <= '1';
					
				elsif rising_edge(i_Clk) then
					s_Q <= not s_Q; -- This should only happen on rising edge
				end if;
			end process;
		o_Q <= s_Q; -- This should have at any time so it is concurrent
end architecture toggle;