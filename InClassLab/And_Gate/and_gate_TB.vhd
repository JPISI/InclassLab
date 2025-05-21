----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2025 08:11:48 PM
-- Design Name: 
-- Module Name: and_gate_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate_TB is
--  Port ( );
end and_gate_TB;

architecture Behavioral of and_gate_TB is
component and_gate is
 Port (x,y: in std_logic;
 F: out std_logic );
end component;

signal x:std_logic:= '0';
signal y:std_logic:= '0';
signal F : std_logic;

begin
uut: and_gate port map(x=>x,y=>y,F=>F); 
stim_proc:process
begin
wait for 10 ns;
x <= '1';
y <= '0';
wait for 10 ns;
x <= '0';
y <= '1';
wait for 10 ns;
x <= '0';
y <= '0';
wait for 10 ns;
x <= '1';
y <= '1';
wait for 10 ns;
end process;
end Behavioral;
