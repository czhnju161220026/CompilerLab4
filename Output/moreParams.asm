.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.globl main
.text
read:
  li $v0, 4
  la $a0, _prompt
  syscall
  li $v0, 5
  syscall
  jr $ra

write:
  li $v0, 1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  move $v0, $0
  jr $ra

func:
  addi $sp, $sp, -44
  sw $a0, 0($sp)
  sw $a1, 4($sp)
  sw $a2, 8($sp)
  sw $a3, 12($sp)
  sw $s0, 16($sp)
  sw $s1, 20($sp)
  sw $s2, 24($sp)
  sw $s3, 28($sp)
  sw $s4, 32($sp)
  sw $s5, 36($sp)
  sw $s6, 40($sp)
  lw $t0, 0($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 0($sp)
  lw $t0, 4($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 4($sp)
  lw $t0, 8($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 8($sp)
  lw $t0, 12($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 12($sp)
  lw $t0, 16($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 16($sp)
  lw $t0, 20($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 20($sp)
  lw $t0, 24($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 24($sp)
  lw $t0, 28($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 28($sp)
  lw $t0, 32($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 32($sp)
  lw $t0, 36($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 36($sp)
  lw $t0, 40($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 40($sp)
  li $t8, 0
  addi $sp, $sp, 44
  move $v0, $t8
  jr $ra
main:
  addi $sp, $sp, -136
  lw $t0, 0($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 0($sp)
  lw $t0, 4($sp)
  lw $t1, 0($sp)
  move $t0, $t1
  sw $t0, 4($sp)
  sw $t1, 0($sp)
  lw $t0, 8($sp)
  lw $t1, 4($sp)
  move $t0, $t1
  sw $t0, 8($sp)
  sw $t1, 4($sp)
  lw $t0, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($sp)
  lw $t0, 16($sp)
  lw $t1, 12($sp)
  move $t0, $t1
  sw $t0, 16($sp)
  sw $t1, 12($sp)
  lw $t0, 20($sp)
  lw $t1, 16($sp)
  move $t0, $t1
  sw $t0, 20($sp)
  sw $t1, 16($sp)
  lw $t0, 24($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 24($sp)
  lw $t0, 28($sp)
  lw $t1, 24($sp)
  move $t0, $t1
  sw $t0, 28($sp)
  sw $t1, 24($sp)
  lw $t0, 32($sp)
  lw $t1, 28($sp)
  move $t0, $t1
  sw $t0, 32($sp)
  sw $t1, 28($sp)
  lw $t0, 36($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 36($sp)
  lw $t0, 40($sp)
  lw $t1, 36($sp)
  move $t0, $t1
  sw $t0, 40($sp)
  sw $t1, 36($sp)
  lw $t0, 44($sp)
  lw $t1, 40($sp)
  move $t0, $t1
  sw $t0, 44($sp)
  sw $t1, 40($sp)
  lw $t0, 48($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 48($sp)
  lw $t0, 52($sp)
  lw $t1, 48($sp)
  move $t0, $t1
  sw $t0, 52($sp)
  sw $t1, 48($sp)
  lw $t0, 56($sp)
  lw $t1, 52($sp)
  move $t0, $t1
  sw $t0, 56($sp)
  sw $t1, 52($sp)
  lw $t0, 60($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 60($sp)
  lw $t0, 64($sp)
  lw $t1, 60($sp)
  move $t0, $t1
  sw $t0, 64($sp)
  sw $t1, 60($sp)
  lw $t0, 68($sp)
  lw $t1, 64($sp)
  move $t0, $t1
  sw $t0, 68($sp)
  sw $t1, 64($sp)
  lw $t0, 72($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 72($sp)
  lw $t0, 76($sp)
  lw $t1, 72($sp)
  move $t0, $t1
  sw $t0, 76($sp)
  sw $t1, 72($sp)
  lw $t0, 80($sp)
  lw $t1, 76($sp)
  move $t0, $t1
  sw $t0, 80($sp)
  sw $t1, 76($sp)
  lw $t0, 84($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 84($sp)
  lw $t0, 88($sp)
  lw $t1, 84($sp)
  move $t0, $t1
  sw $t0, 88($sp)
  sw $t1, 84($sp)
  lw $t0, 92($sp)
  lw $t1, 88($sp)
  move $t0, $t1
  sw $t0, 92($sp)
  sw $t1, 88($sp)
  lw $t0, 96($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 96($sp)
  lw $t0, 100($sp)
  lw $t1, 96($sp)
  move $t0, $t1
  sw $t0, 100($sp)
  sw $t1, 96($sp)
  lw $t0, 104($sp)
  lw $t1, 100($sp)
  move $t0, $t1
  sw $t0, 104($sp)
  sw $t1, 100($sp)
  lw $t0, 108($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 108($sp)
  lw $t0, 112($sp)
  lw $t1, 108($sp)
  move $t0, $t1
  sw $t0, 112($sp)
  sw $t1, 108($sp)
  lw $t0, 116($sp)
  lw $t1, 112($sp)
  move $t0, $t1
  sw $t0, 116($sp)
  sw $t1, 112($sp)
  lw $t0, 120($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 120($sp)
  lw $t0, 124($sp)
  lw $t1, 120($sp)
  move $t0, $t1
  sw $t0, 124($sp)
  sw $t1, 120($sp)
  lw $t0, 128($sp)
  lw $t1, 124($sp)
  move $t0, $t1
  sw $t0, 128($sp)
  sw $t1, 124($sp)
  lw $t0, 124($sp)
  move $a0, $t0
  lw $t1, 112($sp)
  move $a1, $t1
  lw $t2, 100($sp)
  move $a2, $t2
  lw $t3, 88($sp)
  move $a3, $t3
  lw $t4, 76($sp)
  move $s0, $t4
  lw $t5, 64($sp)
  move $s1, $t5
  lw $t6, 52($sp)
  move $s2, $t6
  lw $t7, 40($sp)
  move $s3, $t7
  lw $t0, 28($sp)
  move $s4, $t0
  lw $t1, 16($sp)
  move $s5, $t1
  lw $t2, 4($sp)
  move $s6, $t2
  lw $t3, 132($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal func
  move $t3, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t3, 132($sp)
  li $t8, 0
  addi $sp, $sp, 136
  move $v0, $t8
  jr $ra
