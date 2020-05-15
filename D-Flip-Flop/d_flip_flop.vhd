library ieee;
use ieee.std_logic_1164.all;

entity d_flip_flop is
port(   clk in std_logic;
        rstb in std_logic;
        d : in std_logic;
        q : out std_logic    
    );
end d_flip_flop;

architecture behav of d_flip_flop is



begin

    -- Clock the register
    process (clk,rstb)
    begin
        if (rstb = '0') then -- asynchronous reset
            q <= '0';
        elsif (clk'event) and (clk = '1') then
            q <= d; 
    end process;

end behav;