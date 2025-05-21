library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity Up_Counter_TB is

end Up_Counter_TB;

architecture Behavioral of Up_Counter_TB is

component Up_Counter
     port (CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           COUNTER : out std_logic_vector(3 downto 0));
end component;
signal RST, CLK: std_logic;
signal COUNTER: std_logic_vector ( 3 downto 0);
           
begin
dut: Up_Counter port map (CLK => CLK, RST => RST, COUNTER => COUNTER);
clock_process: process
begin
     

end Behavioral;
