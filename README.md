**# ECE366_Project2**
A MIPS assembly program using the MARS simulator to compute Fibonacci numbers, determine whether numbers are odd using repeated subtraction, and check if the nth Fibonacci number is odd.

**# Group members**

Alexis M. [67428514] - amedin72

Anthony G. [657434216] - agudin2

Husnain H. [668388416] - hharo

Kamil B. [659338143] - bank3


**Contributions** 

Kamil wrote the fibonacci program.

Husnain reviewed and tested fibonacci in MARS, and helped write and test IsFibonacciOdd.

Anthony wrote the IsOdd program and helped start IsFibonacciOdd.

Alexis reviewed and tested IsOdd in MARS, and helped write IsFibonacciOdd.

**How to test:**
1. Launch the MARS simulator and open IsFibonacciOdd.asm (or fibonacci.asm / IsOdd.asm).
2. In the Edit tab, go to the .data section and change the value next to `n: .word <value>` to your desired nonnegative integer n (or `m: .word <value>` if running IsOdd.asm).
3. Click Run > Assemble. This switches the view to the execute tab.
4. Click Run > Go to run the program to completion.
5. Check the result in the Data Segment window at the bottom of the Execute tab (stored at the result memory address) or in the Run I/O output. For IsFibonacciOdd.asm and IsOdd.asm, 1 means odd (True) and 0 means even (False).

**Github link:** https://github.com/cyrctt/ECE366_Project2
