library ieee;
use ieee.std_logic_1164.all;

entity d_ff is
	port(
			i_clk		: in  std_logic;
			i_reset	: in  std_logic;
			i_D		: in  std_logic;
			o_Q		: out std_logic;
			o_Qn		: out std_logic
		 );
end entity;

architecture RTL of d_ff is 

	signal s_Q : std_logic := '0';

	begin
		process (i_clk, i_reset) is
			begin
				if(i_reset = '0') then
					s_Q <= '0';
				elsif rising_edge(i_clk) then
					s_Q <= i_D;
				end if;
			end process;
		o_Q  <= s_Q;
		o_Qn <= not s_Q;
end architecture;	
				