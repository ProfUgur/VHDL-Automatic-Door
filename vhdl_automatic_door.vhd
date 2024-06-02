-- Entity Declaration
entity AutomaticDoor is
    Port (
        Sensor : in std_logic;   -- Motion sensor input
        DoorCtrl : out std_logic -- Door control output
    );
end entity AutomaticDoor;

-- Architecture
architecture Behavioral of AutomaticDoor is
    constant OPEN_DELAY : time := 5 ms;  -- Delay before closing the door (5 milliseconds)
    signal door_open : boolean := false; -- Flag to track door status
    signal timer : time := 0 ns;         -- Timer to track delay
    
begin
    -- Process to control door behavior
    control_process: process(Sensor, timer)
    begin
        if Sensor = '1' then -- Motion detected
            door_open <= true; -- Open the door
            timer <= 0 ns;    -- Reset the timer
        elsif door_open = true then  -- Door is open
            if timer < OPEN_DELAY then
                timer <= timer + 1 ms;  -- Increment timer
            else
                door_open <= false;  -- Close the door after delay
            end if;
        end if;
    end process control_process;

    -- Output assignment
    DoorCtrl <= '1' when door_open = true else '0'; -- Control signal for the door

end architecture Behavioral;
