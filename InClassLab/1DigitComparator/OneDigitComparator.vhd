library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OneDigitComparator is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           G : out STD_LOGIC;
           E : out STD_LOGIC;
           L : out STD_LOGIC);
end OneDigitComparator;

architecture Behavioral of OneDigitComparator is

begin
G <= A and (not B);
E <= (not A) and B;
L <= A xnor B;

end Behavioral;
