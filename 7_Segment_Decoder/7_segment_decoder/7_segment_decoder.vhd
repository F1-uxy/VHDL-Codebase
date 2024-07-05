library ieee;
use ieee.std_logic_1164.all;

entity seven_segment_decoder is
    port (
        i_SW       : in  std_logic_vector(3 downto 0);
		  i_DP		 : in  std_logic;
        o_SevenSeg : out std_logic_vector(6 downto 0);
        o_DP       : out std_logic
    );
end entity seven_segment_decoder;

architecture RTL of seven_segment_decoder is
	signal temp_decoded : std_logic_vector(6 downto 0);
begin
    with i_SW select
        temp_decoded <= "1111110" when "0000", -- 0
								"0110000" when "0001", -- 1
                        "1101101" when "0010", -- 2
                        "1111001" when "0011", -- 3
                        "0110011" when "0100", -- 4
                        "1011011" when "0101", -- 5
                        "1011111" when "0110", -- 6
                        "1110000" when "0111", -- 7
                        "1111111" when "1000", -- 8
                        "1110011" when "1001", -- 9
                        "1110111" when "1010", -- A
                        "0011111" when "1011", -- B
                        "1001110" when "1100", -- C
                        "0111101" when "1101", -- D
                        "1001111" when "1110", -- E
                        "1000111" when "1111"; -- F

	o_SevenSeg <= not temp_decoded;
   o_DP <= not i_DP;

end architecture RTL;
