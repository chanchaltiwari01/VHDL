-- Import standard libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Use standard numeric operations

-- Testbench entity (No ports needed)
entity testbench is
end testbench;

architecture behave of testbench is
    -- Clock signal declaration
    signal clk : std_logic := '0';

begin
    -- Clock generation process
    clk_process: process
    begin
        while now < 100 ns loop  -- Run for 100ns
            clk <= not clk; -- Toggle clock
            wait for 10 ns; -- 10 ns clock period
        end loop;
        wait; -- Stop simulation
    end process;
end behave;

