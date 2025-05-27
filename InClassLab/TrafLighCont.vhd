library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TrafLighCont is
    Port ( CLK         : in  STD_LOGIC;
        RST       : in  STD_LOGIC;
        N-S_LIGHT    : out STD_LOGIC_VECTOR(1 downto 0); --North to South
        E-W_LIGHT    : out STD_LOGIC_VECTOR(1 downto 0)); --East to West
end TrafLighCont;

architecture Behav of TrafLighCont is
    type state_type is (N-S_GREEN, N-S_YELLOW, E-W_GREEN, E-W_YELLOW);
    signal state : state_type := N-S_GREEN;
    signal counter : integer range 0 to 100 := 0;
begin

    process(CLK, RST)
    begin
        if reset = '1' then
            state <= N-S_GREEN;
            counter <= 0;
        elsif rising_edge(CLK) then
            case state is
                when N-S_GREEN =>
                    if counter < 10 then
                        counter <= counter + 1;
                    else
                        counter <= 0;
                        state <= N-S_YELLOW;
                    end if;
                when N-S_YELLOW =>
                    if counter < 2 then
                        counter <= counter + 1;
                    else
                        counter <= 0;
                        state <= E-W_GREEN;
                    end if;
                when E-W_GREEN =>
                    if counter < 10 then
                        counter <= counter + 1;
                    else
                        counter <= 0;
                        state <= E-W_YELLOW;
                    end if;
                when E-W_YELLOW =>
                    if counter < 2 then
                        counter <= counter + 1;
                    else
                        counter <= 0;
                        state <= N-S_GREEN;
                    end if;
            end case;
        end if;
    end process;

    with state select
        N-S_LIGHT <= "10" when N-S_GREEN,  
                    "01" when N-S_YELLOW,  
                    "00" when others;     

    with state select
        E-W_LIGHT <= "10" when E-W_Green, --Green
                    "01" when E-W_Yellow, --Yellow
                    "00" when others; --Red

end Behav;
-- Green: 10 seconds, Yellow: 2 seconds, Red: 12 seconds (while other side is active)
