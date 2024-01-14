# MicroprocessorsLab

## 8086 assembly

### Abstract:
<p>In this experiment we’ve been asked to use the lab kit to implement basic I/O in the MML8086K3 kit using our previous knowledge from microprocessor course. We found that we could use our coding knowledge in assembly “8086 and 8088” practically.</P>

Introduction and Theory:
	In the kit we mentioned we have 8 switches (k1-k8) and 8 LED’s (L1-L8). All we need to do is to read the state of the switches from 0 to 8 and display it on the LEDs from 0 to 8.
Apparatus/ Procedure:
We used Programmable Peripheral Interface adapter (8255A) as an in interface for 386 microprocessor which has 24 I/O programable pins divided to three ports A, B and C. Also, it has three different modes 0 for basic I/O, 1 for strobed I/O and 2 for bidirectional bus.
For the three ports A, B and C, every port can be set for modes. A for (0,1,2), B for (0,1) and C only for mode 0. In port C we have PC upper (4 bits) and PC lower (4 bits) and both can be for input or output.

Register in 8255A	               Register Address 
Control Word Register	           0FF2BH
Port A	                         0FF28h
Port B	                         0FF29H
Port C	                         0FF2AH

 
<img align="center" alt="exp1" width="500px" style="padding-right:10px;" src="https://github.com/BaraSedih11/MicroprocessorsLab/assets/98843912/e5858b4d-e033-4d06-9f79-696d4d5ffa03" />



After getting all the address and we know which ports we need to use so we could now write the assembly code in the emulator and connecting the USB from the kit to the computer to download the code to it. 

Experimental Results and Discussion:
After we wrote the code and download it to the kit, we tried to switch the switches one by one and we found that with every time we change the state of the switches the state of the LED’s also chanced and there is the code we used:


![image](https://github.com/BaraSedih11/MicroprocessorsLab/assets/98843912/f929ae22-c0b8-423f-b161-9a9c5e8b3c5c)

 

