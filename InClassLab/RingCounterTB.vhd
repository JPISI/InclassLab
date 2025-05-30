library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RingCounterTB is
end RingCounterTB;

architecture Behavioral of RingCounterTB is
component RingCounter
    port (CLK : in std_logic;
          RST : in std_logic;
          Q : out std_logic_vector (3 downto 0));
end component;

signal CLK, RST : std_logic := '0';
signal Q : std_logic_vector (3 downto 0);

begin

uut: RingCounter port map(
CLK => CLK,
RST => RST,
Q => Q);

stim_proc: process
begin

wait for 10ns;
    RST <= '1';
wait for 10ns;
    RST <= '0';  

end process;
end Behavioral;
