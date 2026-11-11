
	.data

	# Initial values
n:      .word 10
result: .word 0

	.text
	.globl main

main:

	# Call function with n
	lw $a0, n
    	jal fibonacci

    	# Store and print result
   	sw $v0, result
    	move $a0, $v0
    	li $v0, 1
    	syscall

    	# Exit
    	li $v0, 10
    	syscall

fibonacci:
    
    	# If n = 0, return n
    	beq $a0, $zero, fib_base
    	li $t0, 1
    	# If n = 1, reutrn n
    	beq $a0, $t0, fib_base
    	# Satisfies if n <= 1, return n

    	# a = 0
    	li $t0, 0
    	# b = 1
    	li $t1, 1

    	# for i in range(n - 1) 
    	addi $t2, $a0, -1

fib_loop:

    	# If n = 0 then finish
    	beq $t2, $zero, fib_done

    	# temp = b
    	move $t3, $t1
    	# b = a + b
    	addu $t1, $t0, $t1
    	# a = temp
    	move $t0, $t3
    	
    	# n - 1 for counter
    	addi $t2, $t2, -1
    	# loop
    	j fib_loop


fib_done:

    	# Return b
    	move $v0, $t1
    	jr $ra


fib_base:

    	# Return n when n is 0 or 1
    	move $v0, $a0
    	jr $ra
