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

f:
  addi $sp, $sp, -36
  sw $a0, 0($sp)
  lw $t0, 4($sp)
  li $t0, 0
  sw $t0, 4($sp)
  lw $t0, 8($sp)
  lw $t1, 0($sp)
  lw $t2, 0($sp)
  mul $t0, $t1, $t2
  sw $t0, 8($sp)
  sw $t1, 0($sp)
  sw $t2, 0($sp)
  lw $t0, 4($sp)
  lw $t1, 8($sp)
  move $t0, $t1
  sw $t0, 4($sp)
  sw $t1, 8($sp)
  lw $t0, 12($sp)
  lw $t1, 4($sp)
  move $t0, $t1
  sw $t0, 12($sp)
  sw $t1, 4($sp)
  lw $t0, 16($sp)
  lw $t1, 4($sp)
  addi $t0, $t1, 1
  sw $t0, 16($sp)
  sw $t1, 4($sp)
  lw $t0, 4($sp)
  lw $t1, 16($sp)
  move $t0, $t1
  sw $t0, 4($sp)
  sw $t1, 16($sp)
  lw $t0, 20($sp)
  lw $t1, 4($sp)
  move $t0, $t1
  sw $t0, 20($sp)
  sw $t1, 4($sp)
  lw $t0, 24($sp)
  lw $t1, 4($sp)
  li $t8, 2
  mul $t0, $t1, $t8
  sw $t0, 24($sp)
  sw $t1, 4($sp)
  lw $t0, 28($sp)
  lw $t1, 24($sp)
  addi $t0, $t1, 2
  sw $t0, 28($sp)
  sw $t1, 24($sp)
  lw $t0, 4($sp)
  lw $t1, 28($sp)
  move $t0, $t1
  sw $t0, 4($sp)
  sw $t1, 28($sp)
  lw $t0, 32($sp)
  lw $t1, 4($sp)
  move $t0, $t1
  sw $t0, 32($sp)
  sw $t1, 4($sp)
  lw $t0, 4($sp)
  addi $sp, $sp, 36
  move $v0, $t0
  jr $ra
  sw $t0, 4($sp)
g:
  addi $sp, $sp, -20
  sw $a0, 0($sp)
  lw $t0, 0($sp)
  li $t8, 0
  bgt $t0, $t8, label0
  sw $t0, 0($sp)
  j label1
label0:
  lw $t0, 4($sp)
  lw $t1, 0($sp)
  addi $t0, $t1, -1
  sw $t0, 4($sp)
  sw $t1, 0($sp)
  lw $t0, 0($sp)
  lw $t1, 4($sp)
  move $t0, $t1
  sw $t0, 0($sp)
  sw $t1, 4($sp)
  lw $t0, 8($sp)
  lw $t1, 0($sp)
  move $t0, $t1
  sw $t0, 8($sp)
  sw $t1, 0($sp)
  j label2
label1:
  lw $t0, 12($sp)
  lw $t1, 0($sp)
  addi $t0, $t1, -2
  sw $t0, 12($sp)
  sw $t1, 0($sp)
  lw $t0, 0($sp)
  lw $t1, 12($sp)
  move $t0, $t1
  sw $t0, 0($sp)
  sw $t1, 12($sp)
  lw $t0, 16($sp)
  lw $t1, 0($sp)
  move $t0, $t1
  sw $t0, 16($sp)
  sw $t1, 0($sp)
label2:
  lw $t0, 0($sp)
  addi $sp, $sp, 20
  move $v0, $t0
  jr $ra
  sw $t0, 0($sp)
main:
  addi $sp, $sp, -56
  lw $t0, 40($sp)
  addi $t0, $sp, 0
  sw $t0, 40($sp)
  lw $t0, 44($sp)
  li $t0, 2
  sw $t0, 44($sp)
  lw $t0, 44($sp)
  move $a0, $t0
  lw $t1, 48($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal f
  move $t1, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t1, 48($sp)
  lw $t1, 52($sp)
  lw $t2, 48($sp)
  move $t1, $t2
  sw $t1, 52($sp)
  sw $t2, 48($sp)
  lw $t1, 52($sp)
  addi $sp, $sp, 56
  move $v0, $t1
  jr $ra
  sw $t1, 52($sp)
