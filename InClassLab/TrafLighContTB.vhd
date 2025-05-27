library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TrafLighContTB is
end TrafLighContTB;

architecture behav of TrafLighContTB is

    component TrafLighCont
        Port (CLK : in  STD_LOGIC;
            RST : in  STD_LOGIC;
            N-S_LIGHT : out STD_LOGIC_VECTOR(1 downto 0);
            E-W_LIGHT : out STD_LOGIC_VECTOR(1 downto 0));
    end component;

    signal CLK : STD_LOGIC := '0';
    signal RST : STD_LOGIC := '1';
    signal N-S_LIGHT : STD_LOGIC_VECTOR(1 downto 0);
    signal E-W_LIGHT : STD_LOGIC_VECTOR(1 downto 0);

    constant clk_period : time := 10 ns;

begin
    uut: TrafLighCont
        Port Map (CLK => CLK,
            RST => RST,
            N-S_LIGHT => N-S_LIGHT,
            E-W_LIGHT => E-W_LIGHT);

    clk_process : process
    begin
        CLK <= '0';
        wait for clk_period/2;
        CLK<= '1';
        wait for clk_period/2;
    end process;

    stim_proc: process
    begin
        wait for 20 ns;
        RST <= '0';

        wait for 100 ns;
        wait;
    end process;

end behav;
