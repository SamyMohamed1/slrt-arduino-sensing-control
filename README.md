# Simulink Real-Time & Arduino for Motor ControlThis repository is created to develop DC motor control using Arduino and to bridge it to Simulink Real-time (SLRT). We plan to use Arduino for motor PID, to use Roboguia for encoder reading, and to use L298N or Sabertooth as amplifiers. We plan to use Ethernet (UDP or TCP/IP) for the communication between the Arduino and SLRT.More documentation details can be found on the wiki associated with this repo.Here is an ongoing  [development document](https://docs.google.com/document/d/18pi1abE7RSy7YfeVbhr9RNU76l_90QLvAo3EZrTzdI8/edit?ts=5a4e6b82).## Arduino Programming### Ethernet Communication* Doc of [Ethernet shield V1](https://www.arduino.cc/en/Main/ArduinoEthernetShieldV1), Doc of [Ethernet shield V2](https://www.arduino.cc/en/Guide/ArduinoEthernetShield) * test the Ethernet communication between Arduino and Matlab using ***streamVectorUDP.ino*** and ***test.m**** get motor current state (position, running mode, running status)* set desired position### Motor Control* Encoder Reading ([sample code for Roboguia](https://www.robogaia.com/3-axis-encoder-conter-arduino-shield.html))* PWM set* PID controller## Matlab Programming### Matlab Scripts* ***UDP\_msgr***, "UDP messenger" is a class written for script line use. It includes functions ***send***, ***receiveDataMsg***, and ***receiveStringMsg***.* run ***udp\_send\_receive/test.m*** to receive data from Aruino### Simulink Real-time ModelUnder development.