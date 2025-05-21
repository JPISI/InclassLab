library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparator_2_Digit is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           X1 : inout STD_LOGIC;
           X0 : inout STD_LOGIC;
           G : out STD_LOGIC;
           E : out STD_LOGIC;
           L : out STD_LOGIC);
end Comparator_2_Digit;

architecture Behavioral of Comparator_2_Digit is
begin
     process (A, B, X1, X0)
     begin
        if ((A='1') xnor (B='1')) then
            X1 <= '1';
        if ((A='0') xnor (B='0')) then
            X0 <= '0';
        if  ((A='1' and B='0') or (A='0' and B='1' and X1)) then
            G <= 'A>B';
        if  (X1 and X0) then
            E <= 'A=B';
        if  ((A='1' and B='0' and X0) or (A='0' and B='1')) then
            L <= 'A<B'; 
        end if;
   end process;   
end Behavioral;
