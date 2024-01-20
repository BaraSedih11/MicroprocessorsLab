# MicroprocessorsLab -- EXP2 -- 8253 Timer / counter

## 8086 assembly

### Abstract:
<p>After we get what we need to know about MML8086K3 kit that we used in the lap, we are required to know some properties of its components. One of those components is 8253 programmable timer/counter.</P>

### Objectives:
<p> 1.	To know the basic principle of 8253 and microcomputer interface.
    2.	To master the operation mode and program theory of 8253 timing/Counter.
</p>

### Introduction and Theory:
<p> In general, 8253 has three counters of 16bit with a counting frequency from 0Mz – 2Mz and single +5volt power supply.
Every counter has a specific port address (40h,41h,42h) and an extra 8bit address for a control word address; to select a counter with its properties which are mode, read/load and count as BCD or binary.
</p>

<br>

<img align="center" alt="exp1" width="500px" style="padding-right:10px;" src="https://github.com/BaraSedih11/MicroprocessorsLab/assets/98843912/3bcd33da-0f8d-4b56-96bb-5ef2fcf0809d" />

<br>

### Apparatus/ Procedure:

First of all, we are going to initialize counter 0 in mode 3 (square wave) with a frequency of 10kHz. Assume input frequency is 1MHz. In mode 3 if the count (N) is even, the output is high for one half (N/2) of the count and low for one half (N/2) of the count. If the count (N) is odd, the output is high for one clocking period longer than it is low. Then, we will initialize counter 0 in mode 2 (Rate generator) with a period of 100µs. Assume input frequency is 1MHz.

Know we need to write an assembly code to pass the right value to the control word register as this format:

<br>

<img align="center" alt="exp1" width="600px" style="padding-right:10px;" src="https://github.com/BaraSedih11/MicroprocessorsLab/assets/98843912/efeb6031-5ddc-47eb-b465-4acd708d9252" />

<br>
<br>

According to its format the value that we need to pass is 16h and the address of the control word register is 43h according to the table above.
Now after sitting the control, we are using the counter 0 with mode 3 to read/load least significant byte first then the most. Also, the counter counts in binary. We need to pass values to the port address for the counter (40h) and connect it to the oscilloscope to see the result of the signal. The oscilloscope can visually demonstrate the output signal on its screen. And here is a picture of the oscilloscope and the code that we used.

<br>

<img align="center" alt="exp1" width="200px" style="padding-right:10px;" src="https://github.com/BaraSedih11/MicroprocessorsLab/assets/98843912/616bad7f-7334-4d60-b9cf-7fe887297113" />

<br>
<br>

<img align="center" alt="exp1" width="300px" style="padding-right:10px;" src="https://github.com/BaraSedih11/MicroprocessorsLab/assets/98843912/f2e8c438-8478-4cb4-8505-bc8ba474b4ae" />
<br>
<br>

<img align="center" alt="exp1" width="500px" style="padding-right:10px;" src="https://github.com/BaraSedih11/MicroprocessorsLab/assets/98843912/8ed90173-68e2-43fa-b4e6-9fd6db48366a" />
<br>
<br>

For the second part all we need to change is the value that we pass to the control word register by changing the mood bits so the result will be 14h and there is the code and the oscilloscope result:

<br>
<img align="center" alt="exp1" width="200px" style="padding-right:10px;" src="https://github.com/BaraSedih11/MicroprocessorsLab/assets/98843912/cca83c0a-4575-4e24-9590-838ae41c9787" />
<br>
<br>

<img align="center" alt="exp1" width="500px" style="padding-right:10px;" src="https://github.com/BaraSedih11/MicroprocessorsLab/assets/98843912/a0bb4367-36cd-40cd-82e8-fd4b27090976" />

<br>


