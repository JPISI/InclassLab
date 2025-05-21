library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_FourOne is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Y : out STD_LOGIC);
end Mux_FourOne;

architecture Behavioral of Mux_FourOne is
begin
process (A, B, C, D, S0, S1) is
begin
  if (S0 = '0' and S1 = '0') then
     Y <= A;
  else if (S0 = '1' and S1 = '0') then
     Y <= B;
  else if (S0 = '0' and S1 = '1') then
     Y <= C;
  else
     Y <= D;
  end if;
  


end process;
end behavioral;
