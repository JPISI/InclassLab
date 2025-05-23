library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FourDigitComparator is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           G : out STD_LOGIC;
           E : out STD_LOGIC;
           L : out STD_LOGIC);
end FourDigitComparator;

architecture Behavioral of FourDigitComparator is
begin

G <= '1' when (A>B)
    else '0';
E <= '1' when (A=B)
    else '0';
L <= '1' when (A<B)
    else '0';

end Behavioral;
