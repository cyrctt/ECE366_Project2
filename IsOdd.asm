.data
    # Initial values
m:      .word 7
result: .word 0

.text
.globl main

main:
    # Load m and call IsOdd(m)
    lw $a0, m
    jal IsOdd

    # Store result in memory
    sw $v0, result

    # Exit program
    li $v0, 10
    syscall

IsOdd:
    # Save return address on stack
    addi $sp, $sp, -4
    sw $ra, 0($sp)

    # Set y = 2 and call division(m, 2)
    li $a1, 2
    jal division

    # If remainder == 0, return False (0)
    beq $v0, $zero, return_false

    # Otherwise, return True (1)
    li $v0, 1
    j isodd_end

return_false:
    # Return 0 when m is even
    li $v0, 0

isodd_end:
    # Restore return address and return
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra

division:
    # quotient = 0
    li $t0, 0

div_loop:
    # while x >= y, keep subtracting
    blt $a0, $a1, div_end

    # x = x - y
    sub $a0, $a0, $a1
    # quotient = quotient + 1
    addi $t0, $t0, 1
    j div_loop

div_end:
    # Return remainder x
    move $v0, $a0
    jr $ra
