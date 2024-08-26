library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity vga_driver is
	port ( 
		CLK	: in std_logic;
		RST	: in std_logic;
		HSYNC	: out std_logic;
		VSYNC	: out std_logic;
		RGB	: out std_logic_vector(2 downto 0)
		);
end vga_driver;

architecture RTL of vga_driver is

	signal clk25	: std_logic := '0';
	
	-- Horizontal Timing
	constant HD		: integer := 639;	-- 639 Horizontal Resolution (640) count starts at 0
	constant HFP	: integer := 16; 	-- 16  Right border (front porch)
	constant HSP	: integer := 96;	-- 96  Sync pulse (Retrace)
	constant HBP 	: integer := 48;	-- 48  Left border (back porch)

	-- Vertical Timing
	constant VD 	: integer := 479;	-- 479 Vertical display (480) count starts at 0
	constant VFP	: integer := 10;	-- 10 Right border (front porch)
	constant VSP	: integer := 2;	-- 2  Sync pulse (Retrace)
	constant VBP 	: integer := 33;	-- 33  Left border (back porch)
	
	signal hPos		: integer := 0;   -- 799 Counter
	signal vPos		: integer := 0;	-- 524 Counter
	
	signal videoOn	: std_logic := '0'; -- IF 0 then don't draw
	
begin


-- Clock Divider - 50MHz -> 25MHz
	clk_div : process(CLK)
	begin
		if (CLK'event and CLK = '1') then
			clk25 <= not clk25;
		end if;
	end process;
	
	
	Horizontal_Position_Counter:process(clk25, RST)
	begin
		if(RST = '1')then
			hPos <= 0;
		elsif(clk25'event and clk25 = '1') then
			if(hPos = (HD + HFP + HSP + HBP)) then
				hPos <= 0;
			else
				hPos <= hpos +1;
			end if;
		end if;
	
	end process;
	
	
	Vertical_Position_Counter:process(clk25, RST, hPos)
	begin
		if(RST = '1')then
			vPos <= 0;
		elsif(clk25'event and clk25 = '1') then
			if(hPos = (HD + HFP + HSP + HBP)) then
				if(vPos = (VD + VFP + VSP + VBP)) then
					vPos <= 0;
				else
					vPos <= vPos + 1;
				end if;
			end if;
		end if;
	end process;
	
	
	Horizontal_Synchronisation:process(clk25, RST, hPos)
	begin
		if(RST = '1')then
			HSYNC <= '0';
		elsif(clk25'event and clk25 = '1') then
			if((hPos <= (HD + HFP)) or (hPos > HD + HFP + HSP)) then
				HSYNC <= '0';
			end if;
		end if;
	end process;
	
	
	Vertical_Synchronisation:process(clk25, RST, vPos)
	begin
		if(RST = '1')then
			VSYNC <= '0';
		elsif(clk25'event and clk25 = '1') then
			if((vPos <= (VD + VFP)) or (vPos > VD + VFP + VSP)) then
				VSYNC <= '0';
			end if;
		end if;
	end process;
	
		
	video_on:process(clk25, RST, hPos, vPos)
	begin
		if(RST = '1') then
			videoOn <= '0';
		elsif(clk25'event and clk25 = '1') then
			if(hPos <= HD and vPos <= VD) then
				videoOn <= '1';
			else
				videoOn <= '0';
			end if;
		end if;
	end process;
	
	draw:process(clk25, RST, hPos, vPos, videoOn)
	begin
		if(RST = '1') then
			RGB <= "000";
		elsif(clk25'event and clk25 = '1') then
			if(videoOn = '1') then
				if((hPos >= 9 and hPos <= 59) and (vPos >= 10 and vPos <=60)) then
					RGB <= "111";
				else
					RGB <= "000";
				end if;
			else
				RGB <= "000";
			end if;
		end if;
	end process;
	
		
end RTL;