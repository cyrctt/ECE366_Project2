# ECE366_Project2
A MIPS assembly program using the MARS simulator to compute Fibonacci numbers, determine whether numbers are odd using repeated subtraction, and check if the nth Fibonacci number is odd.

# Group members
Alexis M. [67428514]
Anthony G. [657434216]
Husnain H. [668388416]
Kamil B. [UIN]


1. Launch the MARS simulator and open is_odd.asm or fibonnaci.asm.
2. In the Edit tab, set the value of m in the .data section next to m: .word <value>.
    - Change the integer value next to n: .word <value> to your desired nonnegative integer n.
3. Click Run > Assemble. This switches the view to the execute tab.
4. Click Run > Go to run the program to completion.
5. - Look at the data segment window at the bottom of the Execute tab.
   - Ensure the bottom checkbox decimal (instead of Hexadecimal) is selected for easier reading.
   - Check register $v0 or memory address 0x10010004 for the result (1 if m is odd, 0 if even).
