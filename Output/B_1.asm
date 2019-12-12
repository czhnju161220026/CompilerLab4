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

hanoi:
  addi $sp, $sp, -48
  sw $a0, 0($sp)
  sw $a1, 4($sp)
  sw $a2, 8($sp)
  sw $a3, 12($sp)
  lw $t0, 12($sp)
  li $t8, 1
  beq $t0, $t8, label0
  sw $t0, 12($sp)
  j label1
label0:
  lw $t0, 16($sp)
  lw $t1, 8($sp)
  li $t8, 1000000
  mul $t0, $t1, $t8
  sw $t0, 16($sp)
  sw $t1, 8($sp)
  lw $t0, 20($sp)
  lw $t1, 16($sp)
  lw $t2, 0($sp)
  add $t0, $t1, $t2
  sw $t0, 20($sp)
  sw $t1, 16($sp)
  sw $t2, 0($sp)
  lw $t0, 20($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 20($sp)
  j label2
label1:
  lw $t0, 24($sp)
  lw $t1, 12($sp)
  addi $t0, $t1, -1
  sw $t0, 24($sp)
  sw $t1, 12($sp)
  lw $t0, 4($sp)
  move $a0, $t0
  lw $t1, 0($sp)
  move $a1, $t1
  lw $t2, 8($sp)
  move $a2, $t2
  lw $t3, 24($sp)
  move $a3, $t3
  lw $t4, 28($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal hanoi
  move $t4, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t4, 28($sp)
  lw $t4, 32($sp)
  lw $t5, 8($sp)
  li $t8, 1000000
  mul $t4, $t5, $t8
  sw $t4, 32($sp)
  sw $t5, 8($sp)
  lw $t4, 36($sp)
  lw $t5, 32($sp)
  lw $t6, 0($sp)
  add $t4, $t5, $t6
  sw $t4, 36($sp)
  sw $t5, 32($sp)
  sw $t6, 0($sp)
  lw $t4, 36($sp)
  move $a0, $t4
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t4, 36($sp)
  lw $t4, 40($sp)
  lw $t5, 12($sp)
  addi $t4, $t5, -1
  sw $t4, 40($sp)
  sw $t5, 12($sp)
  lw $t4, 0($sp)
  move $a0, $t4
  lw $t5, 8($sp)
  move $a1, $t5
  lw $t6, 4($sp)
  move $a2, $t6
  lw $t7, 40($sp)
  move $a3, $t7
  lw $t0, 44($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal hanoi
  move $t0, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 44($sp)
label2:
  li $t8, 0
  addi $sp, $sp, 48
  move $v0, $t8
  jr $ra
main:
  addi $sp, $sp, -16
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
  li $t8, 3
  move $a0, $t8
  li $t8, 2
  move $a1, $t8
  li $t8, 1
  move $a2, $t8
  lw $t0, 4($sp)
  move $a3, $t0
  lw $t1, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal hanoi
  move $t1, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t1, 12($sp)
  li $t8, 0
  addi $sp, $sp, 16
  move $v0, $t8
  jr $ra
