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

main:
  addi $sp, $sp, -96
  lw $t0, 0($sp)
  li $t0, 12
  sw $t0, 0($sp)
  lw $t0, 4($sp)
  li $t0, 4
  sw $t0, 4($sp)
  lw $t0, 8($sp)
  li $t0, 5
  sw $t0, 8($sp)
  lw $t0, 12($sp)
  lw $t1, 0($sp)
  lw $t2, 4($sp)
  mul $t0, $t1, $t2
  sw $t0, 12($sp)
  sw $t1, 0($sp)
  sw $t2, 4($sp)
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
  lw $t1, 16($sp)
  lw $t2, 8($sp)
  add $t0, $t1, $t2
  sw $t0, 24($sp)
  sw $t1, 16($sp)
  sw $t2, 8($sp)
  lw $t0, 28($sp)
  lw $t1, 24($sp)
  lw $t2, 4($sp)
  sub $t0, $t1, $t2
  sw $t0, 28($sp)
  sw $t1, 24($sp)
  sw $t2, 4($sp)
  lw $t0, 32($sp)
  lw $t1, 28($sp)
  move $t0, $t1
  sw $t0, 32($sp)
  sw $t1, 28($sp)
  lw $t0, 36($sp)
  lw $t1, 32($sp)
  move $t0, $t1
  sw $t0, 36($sp)
  sw $t1, 32($sp)
  lw $t0, 40($sp)
  lw $t1, 32($sp)
  lw $t2, 4($sp)
  mul $t0, $t1, $t2
  sw $t0, 40($sp)
  sw $t1, 32($sp)
  sw $t2, 4($sp)
  lw $t0, 44($sp)
  lw $t1, 16($sp)
  lw $t2, 40($sp)
  add $t0, $t1, $t2
  sw $t0, 44($sp)
  sw $t1, 16($sp)
  sw $t2, 40($sp)
  lw $t0, 48($sp)
  lw $t1, 44($sp)
  move $t0, $t1
  sw $t0, 48($sp)
  sw $t1, 44($sp)
  lw $t0, 52($sp)
  lw $t1, 48($sp)
  move $t0, $t1
  sw $t0, 52($sp)
  sw $t1, 48($sp)
  lw $t0, 48($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 48($sp)
  lw $t0, 56($sp)
  lw $t1, 16($sp)
  lw $t2, 32($sp)
  add $t0, $t1, $t2
  sw $t0, 56($sp)
  sw $t1, 16($sp)
  sw $t2, 32($sp)
  lw $t0, 60($sp)
  lw $t1, 48($sp)
  lw $t2, 56($sp)
  mul $t0, $t1, $t2
  sw $t0, 60($sp)
  sw $t1, 48($sp)
  sw $t2, 56($sp)
  lw $t0, 64($sp)
  lw $t1, 60($sp)
  li $t8, 25
  div $t1, $t8
  mflo $t0
  sw $t0, 64($sp)
  sw $t1, 60($sp)
  lw $t0, 48($sp)
  lw $t1, 64($sp)
  move $t0, $t1
  sw $t0, 48($sp)
  sw $t1, 64($sp)
  lw $t0, 68($sp)
  lw $t1, 48($sp)
  move $t0, $t1
  sw $t0, 68($sp)
  sw $t1, 48($sp)
  lw $t0, 72($sp)
  lw $t1, 32($sp)
  lw $t2, 48($sp)
  add $t0, $t1, $t2
  sw $t0, 72($sp)
  sw $t1, 32($sp)
  sw $t2, 48($sp)
  lw $t0, 76($sp)
  lw $t1, 16($sp)
  lw $t2, 48($sp)
  div $t1, $t2
  mflo $t0
  sw $t0, 76($sp)
  sw $t1, 16($sp)
  sw $t2, 48($sp)
  lw $t0, 80($sp)
  lw $t1, 72($sp)
  lw $t2, 76($sp)
  sub $t0, $t1, $t2
  sw $t0, 80($sp)
  sw $t1, 72($sp)
  sw $t2, 76($sp)
  lw $t0, 84($sp)
  lw $t1, 4($sp)
  li $t8, 12
  mul $t0, $t1, $t8
  sw $t0, 84($sp)
  sw $t1, 4($sp)
  lw $t0, 88($sp)
  lw $t1, 80($sp)
  lw $t2, 84($sp)
  add $t0, $t1, $t2
  sw $t0, 88($sp)
  sw $t1, 80($sp)
  sw $t2, 84($sp)
  lw $t0, 32($sp)
  lw $t1, 88($sp)
  move $t0, $t1
  sw $t0, 32($sp)
  sw $t1, 88($sp)
  lw $t0, 92($sp)
  lw $t1, 32($sp)
  move $t0, $t1
  sw $t0, 92($sp)
  sw $t1, 32($sp)
  lw $t0, 48($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 48($sp)
  lw $t0, 32($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 32($sp)
  li $t8, 0
  addi $sp, $sp, 96
  move $v0, $t8
  jr $ra
