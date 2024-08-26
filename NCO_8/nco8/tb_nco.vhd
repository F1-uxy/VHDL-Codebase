library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_nco is
end entity;

architecture behavior of tb_nco is

    component nco8 is
        port (
            i_clk       : in std_logic;
            i_clk_rst   : in std_logic;
            i_fcw       : in std_logic_vector(7 downto 0);
            o_nco       : out std_logic_vector(7 downto 0)
        );
    end component;

    signal tb_clk       : std_logic := '0';
    signal tb_rst       : std_logic := '0';
    signal tb_fcw       : std_logic_vector(7 downto 0) := (others => '0');
    signal tb_nco_out   : std_logic_vector(7 downto 0);

    constant clk_period : time := 10 ns;

begin

    uut: nco8
        port map (
            i_clk => tb_clk,
            i_clk_rst => tb_rst,
            i_fcw => tb_fcw,
            o_nco => tb_nco_out
        );

    clk_process : process
    begin
        tb_clk <= '0';
        wait for clk_period / 2;
        tb_clk <= '1';
        wait for clk_period / 2;
    end process clk_process;

    stim_proc: process
    begin
        tb_rst <= '1';
        wait for clk_period * 2;
        tb_rst <= '0';
        wait for clk_period * 2;

        tb_fcw <= "00000010";
        wait for clk_period * 256;  

    end process;

end architecture;
