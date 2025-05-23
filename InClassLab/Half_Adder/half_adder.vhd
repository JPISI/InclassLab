library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : out STD_LOGIC;
           Cout : out STD_LOGIC);
end half_adder;

architecture Behavioral of half_adder is
begin
S <= A xor B;
Cout <= A and B;

end Behavioral;
