library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
entity Up_Counter is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           COUNTER : out std_logic_vector(3 downto 0));
end Up_Counter;

architecture Behavioral of Up_Counter is
signal Counter_Up : std_logic_vector (3 downto 0) ;
begin

process (CLK)
begin
if (rising_edge(CLK)) then
     if (RST = '1') then 
          Counter_Up <= "0";
     else
Counter_Up <= Counter_Up + x"1";

 end if;
 end if;  
end process;
 COUNTER <= Counter_Up;

end Behavioral;
