library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FourBitShifter is
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q1 : out STD_LOGIC;
           Q2 : out STD_LOGIC;
           Q3 : out STD_LOGIC;
           Q4 : out STD_LOGIC);
end FourBitShifter;

architecture Behavioral of FourBitShifter is
begin
process (D, CLK) is
begin
    if (D = '0' and CLK = '0') then
    Q1 <= '1';
    elsif (D = '0' and CLK = '1') then
    Q2 <= '1';
    elsif (D = '1' and CLK = '0') then
    Q3 <= '1';
    else 
    Q4 <= '1';
        end if;
end process;   
end Behavioral;
