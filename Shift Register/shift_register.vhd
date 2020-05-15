library ieee;
use ieee.std_logic_1164.all;

entity shift_register is
port(   clk in std_logic;
        rstb in std_logic;
        val_in : in std_logic;
        val_out: out std_logic_vector(7 downto 0)    
    );
end shift_register;

architecture behav of shift_register is

-- Declare Signals
signal val_Shift : std_logic_vector(7 downto 0) := (others => '0');

begin

    -- Clock the register
    process (clk,rstb)
    begin
        if (rstb = '1') then -- asynchronous reset
            val_Shift <= (others => '0');
        elsif (clk'event) and (clk = '1') then -- Left Shift
            val_Shift(7) <= val_in;
            for i in 0 to 6 loop 
            val_Shift(i) <= val_Shift(i+1); 
           end loop; 
            
    end process;

    val_out <= val_Shift;

end behav;
