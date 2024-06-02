# VHDL-Automatic-Door

This is a simple VHDL code for controlling automatic doors. This code assumes a basic scenario where the door opens when a sensor detects motion and closes after a certain delay when there is no motion detected. And also it provides a basic framework for controlling automatic doors based on motion sensor input and a predefined delay for automatic closure. You can simulate and synthesize this code using VHDL synthesis tools (such as, Xilinx Vivado) or use it in real-world applications.

Explanation of the code:

- Entity Declaration: Defines the inputs and outputs of the module. Here, the input is the motion sensor signal, and the output is the control signal for the door.

  ![entity_declaration](https://github.com/ProfUgur/VHDL-Automatic-Door/assets/148859613/392b06c0-f404-4cd2-ad1d-128153c0f501)

- Architecture: Describes the behavior of the module.

  Constants: Defines a constant OPEN_DELAY which represents the delay before the door automatically closes.

  Signals:

door_open: A boolean signal to keep track of whether the door is open or closed.
timer: A time-based signal to count the delay before closing the door.

![architecture](https://github.com/ProfUgur/VHDL-Automatic-Door/assets/148859613/0caae7a5-0051-4a4c-9abd-f8425e311f57)

- Control Process:

Monitors the Sensor input.
If motion is detected (Sensor = '1'), the door opens (door_open is set to true), and the timer is reset
If the door is open and no motion is detected, the timer counts up until it reaches the OPEN_DELAY, at which point the door is closed (door_open is set to false).

![control_process](https://github.com/ProfUgur/VHDL-Automatic-Door/assets/148859613/23deeb85-aae9-469d-8583-ae193dc9f19c)

- Output Assignment:

Sets DoorCtrl to '1' when the door is open (door_open = true), indicating that the door should be open, and '0' otherwise, indicating that the door should be closed.

![output_assignment](https://github.com/ProfUgur/VHDL-Automatic-Door/assets/148859613/3d9a0949-b858-4a7e-a9e5-a83f7a3e8258)

A few site suggestions to understand or find information about the VHDL

https://fpgatutorial.com/vhdl/

https://www.engineersgarage.com/vhdl-tutorial-1-introduction-to-vhdl/

https://nandland.com/introduction-to-vhdl-for-beginners-with-code-examples/

https://www.tutorialspoint.com/vlsi_design/vlsi_design_vhdl_introduction.htm

https://www.doulos.com/knowhow/vhdl/

https://www.javatpoint.com/vhdl
