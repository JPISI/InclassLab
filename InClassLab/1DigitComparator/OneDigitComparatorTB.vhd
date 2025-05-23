library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OneDigitComparatorTB is

end OneDigitComparatorTB;

architecture Behavioral of OneDigitComparatorTB is
component OneDigitComparator
port (A,B : in std_logic;
G,E,L : out std_logic);
end component; 

signal A,B : std_logic:= '0';

signal G,E,L : std_logic;

begin
uut: OneDigitComparator port map 
(A=>A,B=>B,G=>G,E=>E,L=>L);
stim_proc: process
begin

wait for 10ns;
A <= '1';
B <= '0';
wait for 10ns;

A <= '0';
B <= '1';
wait for 10ns;

A <= '0';
B <= '0';
wait for 10ns;

A <= '1';
B <= '1';
wait for 10ns;

end process;
end Behavioral;
