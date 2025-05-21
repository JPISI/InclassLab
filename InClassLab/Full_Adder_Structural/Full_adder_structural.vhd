library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_adder_structural is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S : out STD_LOGIC;
           Cout : out STD_LOGIC);
end Full_adder_structural;

architecture Behavioral of Full_adder_structural is
   signal SUM, C1, C2 : std_logic;
begin

  HA1: entity work.half_adder port map ( A => A, B => B, S => SUM, Cout => C1);

  HA2: entity work.half_adder port map ( A => Sum, B => Cin, S => S, Cout => C2)

Cout <= C1 or C2;
end Behavioral;
