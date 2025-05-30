library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RingCounter is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end RingCounter;

architecture Behavioral of RingCounter is
signal TEMPQ : std_logic_vector (3 downto 0) := "0000";
begin

process (CLK, RST)
begin    
if (RST = '1') then 
    TEMPQ <= "0001";
elsif rising_edge (CLK) then    
    TEMPQ(1) <= TEMPQ(0);
    TEMPQ(2) <= TEMPQ(1);
    TEMPQ(3) <= TEMPQ(2);
    TEMPQ(0) <= TEMPQ(3);

end if;
end process; 
Q <= TEMPQ;

end Behavioral;
