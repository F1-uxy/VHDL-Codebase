library ieee;
use ieee.std_logic_1164.all;

entity hex_encoder is 
	port(
			i_bin		: in  std_logic_vector(7 downto 0);
			o_MSD		: out std_logic_vector(6 downto 0);
			o_LSD		: out std_logic_vector(6 downto 0);
			o_MSD_DP : out std_logic;
			o_LSD_DP : out std_logic
		 );
end entity hex_encoder;

architecture RTL of hex_encoder is
	
	component seven_segment_decoder
		port
		(
			i_SW				:	 IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			i_DP				:	 IN STD_LOGIC;
			o_SevenSeg		:	 OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			o_DP				:	 OUT STD_LOGIC
		);
	end component;
	
	signal w_lower_nibble : std_logic_vector(3 downto 0);
	signal w_upper_nibble : std_logic_vector(3 downto 0);
	
	begin
		w_lower_nibble <= i_bin(3 downto 0);
		w_upper_nibble <= i_bin(7 downto 4);
		
		-- Most Significant Decoder
		msd_decoder : seven_segment_decoder
		port map (
						i_SW => w_upper_nibble,
						i_DP => '0',
						o_SevenSeg => o_MSD,
						o_DP => o_MSD_DP
					);
		
		-- Least Significant Decoder
		lsd_decoder : seven_segment_decoder
		port map (
						i_SW => w_lower_nibble,
						i_DP => '0',
						o_SevenSeg => o_LSD,
						o_DP => o_LSD_DP
					);
	
end architecture RTL;