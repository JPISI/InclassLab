library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_TB is

end half_adder_TB;

architecture Behavioral of half_adder_TB is

component half_adder
port ( A:in std_logic;
       B:in std_logic;
       S:out std_logic;
       Cout:out std_logic);
end component;

signal A: std_logic:= '0';
signal B: std_logic:= '0';

signal S: std_logic;
signal Cout: std_logic;

begin 
uut: half_adder port map
( A => A,
  B => B,
  S => S,
  Cout => Cout);
 
stim_proc:process
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

end;