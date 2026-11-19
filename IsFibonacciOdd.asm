.data
n:      .word 10
result: .word 0

.text
.globl main

main:
    # load n and IsFibonacciOdd(n) - this function is missing as of now
    lw $a0, n
    jal IsFibonacciOdd

    # store result in memory and print
    sw $v0, result
    move $a0, $v0
    li $v0, 1
    syscall

    # exit
    li $v0, 10
    syscall

IsFibonacciOdd:
    # save address
    addi $sp, $sp, -4
    sw $ra, 0($sp)

    jal fibonacci
    move $a0, $v0
    jal IsOdd
    #restore adress 
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra

fibonacci:
    beq $a0, $zero, fib_base
    li $t0, 1
    beq $a0, $t0, fib_base

    li $t0, 0
    li $t1, 1
    addi $t2, $a0, -1

fib_loop:
    # finish when its 0
    beq $t2, $zero, fib_done
    move $t3, $t1
    addu $t1, $t0, $t1
    move $t0, $t3
    addi $t2, $t2, -1
    j fib_loop

fib_done:
    # return b
    move $v0, $t1
    jr $ra

fib_base:
    # return n when n is 0 or 1
    move $v0, $a0
    jr $ra
