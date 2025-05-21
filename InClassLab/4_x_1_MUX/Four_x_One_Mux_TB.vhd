library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Four_x_One_Mux_TB is
end Four_x_One_Mux_TB;

architecture Behavioral of Four_x_One_Mux_TB is

component Mux_FourOne
port(
     A : in std_logic;
     B : in std_logic;
     C : in std_logic;
     D : in std_logic;
     S0 : in std_logic;
     S1 : in std_logic;
     Y : out std_logic);
end component;

signal A: std_logic := '0';
signal B: std_logic := '0';
signal C: std_logic := '0';
signal D: std_logic := '0';
signal S0: std_logic := '0';
signal S1: std_logic := '0';
signal Y: std_logic;

begin
    uut: Mux_FourOne port map (
            A => A,
            B => B, 
            C => C, 
            D => D,
            S0 => S0,
            S1 => S1,
            Y => Y);
            
stim_proc: process
begin
     wait for 100ns;
    A <= '1';
    B <= '0';
    C <= '1';
    D <= '0';

    S0 <= '0'; S1 <= '0';
       wait for 100ns;
    S0 <= '1'; S1 <= '0';
       wait for 100ns;
    S0 <= '0'; S1 <= '1';
       wait for 100ns;
    S0 <= '0'; S1 <= '1';
       wait for 100ns;
end process;
end;