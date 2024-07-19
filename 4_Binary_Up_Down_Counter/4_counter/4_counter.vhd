library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity UpDownCounter is
	port(
			i_clk				: in std_logic;
			i_reset			: in std_logic;
			i_up_down		: in std_logic;
			i_enable			: in std_logic;
			o_data			: out std_logic_vector(3 downto 0)
		 );
end entity UpDownCounter;

architecture RTL of UpDownCounter is
	
	type state_type is (IDLE, COUNT_UP, COUNT_DOWN);
	signal s_Q, s_Qnxt 		 : state_type;
	signal counter				 : std_logic_vector(3 downto 0) := "0000";
	
	
	
	begin 
	
	---------------------------------------------------
	-- FSM
	
	
	-- State Memory
	
		process(i_clk, i_reset)
		begin
			if (i_reset = '0') then
				s_Q 	  <= IDLE;
				counter <= "0000";
			elsif rising_edge(i_clk) then
				if i_enable = '1' then
					s_Q <= s_Qnxt;
					if s_Qnxt = COUNT_UP then
						counter <= counter + 1;
					elsif s_Qnxt = COUNT_DOWN then
						counter <= counter - 1;
					end if;
				end if;
			end if;
		end process;
		
		
	-- State Transition Logic
		process (s_Q, i_up_down)
		begin
			case s_Q is
				when IDLE =>
					if (i_enable = '1') then
						if (i_up_down = '1') then
							s_Qnxt <= COUNT_UP;
						else
							s_Qnxt <= COUNT_DOWN;
						end if;
					else
						s_Qnxt <= IDLE;
					end if;
				
				when COUNT_UP =>
					if (i_enable = '0') then
						s_Qnxt <= IDLE;
					else
						s_Qnxt <= COUNT_UP;
					end if;
				
				when COUNT_DOWN =>
					if (i_enable = '0') then
						s_Qnxt <= IDLE;
					else
						s_Qnxt <= COUNT_DOWN;
					end if;
				when others =>
					s_Qnxt <= IDLE;
			end case;
		end process;
		
		o_data  <= counter;
	end RTL;
			
			
			
				