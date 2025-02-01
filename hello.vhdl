entity hello_world is
end hello_world;

architecture behave of hello_world is
begin
    process
    begin
        report "Hello, VHDL World!";
        wait;
    end process;
end behave;

