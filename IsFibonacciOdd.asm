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
