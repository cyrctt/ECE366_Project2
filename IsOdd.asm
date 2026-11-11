.data
m: .word 7
result: .word 0

.text
.globl main

main:
    lw $a0, m
    jal IsOdd
    sw $v0, result
    li $v0, 10
    syscall

IsOdd:
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    li $a1, 2
    jal division
    beq $v0, $zero, return_false
    li $v0, 1
    j isodd_end

return_false:
    li $v0, 0

isodd_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra

division:
    li $t0, 0

div_loop:
    blt $a0, $a1, div_end
    sub $a0, $a0, $a1
    addi $t0, $t0, 1
    j div_loop

div_end:
    move $v0, $a0
    jr $ra
