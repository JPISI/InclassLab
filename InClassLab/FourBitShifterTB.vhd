library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FourBitShifterTB is

end FourBitShifterTB;

architecture Behavioral of FourBitShifterTB is
component FourBitShifter
port (
D : in std_logic;
CLK : in std_logic;
Q1 : out std_logic;
Q2 : out std_logic;
Q3 : out std_logic;
Q4 : out std_logic);
end component;

signal D : std_logic := '0';
signal CLK : std_logic := '0';
signal Q1 : std_logic;
signal Q2 : std_logic;
signal Q3 : std_logic;
signal Q4 : std_logic;

begin
    uut:FourBitShifter port map (
            D => D,
            CLK => CLK,
            Q1 => Q1,
            Q2 => Q2,
            Q3 => Q3,
            Q4 => Q4);

stim_proc: process 
begin
    wait for 100ns;
     D <= '0'; CLK <= '0';
       wait for 100ns;
    D <= '0'; CLK <= '1';
       wait for 100ns;
    D <= '1'; CLK <= '0';
       wait for 100ns;
    D <= '1'; CLK <= '1';
       wait for 100ns;
end process;
end Behavioral;
