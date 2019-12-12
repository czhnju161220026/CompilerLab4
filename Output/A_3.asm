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
  addi $sp, $sp, -84
  lw $t0, 0($sp)
  li $t0, 0
  sw $t0, 0($sp)
  lw $t0, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 4($sp)
  lw $t0, 8($sp)
  lw $t1, 4($sp)
  move $t0, $t1
  sw $t0, 8($sp)
  sw $t1, 4($sp)
  lw $t0, 12($sp)
  lw $t1, 8($sp)
  move $t0, $t1
  sw $t0, 12($sp)
  sw $t1, 8($sp)
  lw $t0, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 16($sp)
  lw $t0, 20($sp)
  lw $t1, 16($sp)
  move $t0, $t1
  sw $t0, 20($sp)
  sw $t1, 16($sp)
  lw $t0, 24($sp)
  lw $t1, 20($sp)
  move $t0, $t1
  sw $t0, 24($sp)
  sw $t1, 20($sp)
  lw $t0, 8($sp)
  lw $t1, 20($sp)
  bgt $t0, $t1, label0
  sw $t0, 8($sp)
  sw $t1, 20($sp)
  j label1
label0:
  lw $t0, 28($sp)
  lw $t1, 8($sp)
  move $t0, $t1
  sw $t0, 28($sp)
  sw $t1, 8($sp)
  lw $t0, 32($sp)
  lw $t1, 28($sp)
  move $t0, $t1
  sw $t0, 32($sp)
  sw $t1, 28($sp)
  j label2
label1:
  lw $t0, 28($sp)
  lw $t1, 20($sp)
  move $t0, $t1
  sw $t0, 28($sp)
  sw $t1, 20($sp)
  lw $t0, 36($sp)
  lw $t1, 28($sp)
  move $t0, $t1
  sw $t0, 36($sp)
  sw $t1, 28($sp)
label2:
label3:
  lw $t0, 0($sp)
  li $t8, 0
  beq $t0, $t8, label4
  sw $t0, 0($sp)
  j label5
label4:
  lw $t0, 40($sp)
  lw $t1, 28($sp)
  lw $t2, 8($sp)
  div $t1, $t2
  mflo $t0
  sw $t0, 40($sp)
  sw $t1, 28($sp)
  sw $t2, 8($sp)
  lw $t0, 44($sp)
  lw $t1, 40($sp)
  lw $t2, 8($sp)
  mul $t0, $t1, $t2
  sw $t0, 44($sp)
  sw $t1, 40($sp)
  sw $t2, 8($sp)
  lw $t0, 28($sp)
  lw $t1, 44($sp)
  beq $t0, $t1, label6
  sw $t0, 28($sp)
  sw $t1, 44($sp)
  j label7
label6:
  lw $t0, 48($sp)
  lw $t1, 28($sp)
  lw $t2, 20($sp)
  div $t1, $t2
  mflo $t0
  sw $t0, 48($sp)
  sw $t1, 28($sp)
  sw $t2, 20($sp)
  lw $t0, 52($sp)
  lw $t1, 48($sp)
  lw $t2, 20($sp)
  mul $t0, $t1, $t2
  sw $t0, 52($sp)
  sw $t1, 48($sp)
  sw $t2, 20($sp)
  lw $t0, 28($sp)
  lw $t1, 52($sp)
  beq $t0, $t1, label9
  sw $t0, 28($sp)
  sw $t1, 52($sp)
  j label10
label9:
  lw $t0, 56($sp)
  lw $t1, 28($sp)
  move $t0, $t1
  sw $t0, 56($sp)
  sw $t1, 28($sp)
  lw $t0, 60($sp)
  lw $t1, 56($sp)
  move $t0, $t1
  sw $t0, 60($sp)
  sw $t1, 56($sp)
  lw $t0, 0($sp)
  li $t0, 1
  sw $t0, 0($sp)
  lw $t0, 64($sp)
  lw $t1, 0($sp)
  move $t0, $t1
  sw $t0, 64($sp)
  sw $t1, 0($sp)
  j label11
label10:
  lw $t0, 68($sp)
  lw $t1, 28($sp)
  addi $t0, $t1, 1
  sw $t0, 68($sp)
  sw $t1, 28($sp)
  lw $t0, 28($sp)
  lw $t1, 68($sp)
  move $t0, $t1
  sw $t0, 28($sp)
  sw $t1, 68($sp)
  lw $t0, 72($sp)
  lw $t1, 28($sp)
  move $t0, $t1
  sw $t0, 72($sp)
  sw $t1, 28($sp)
label11:
  j label8
label7:
  lw $t0, 76($sp)
  lw $t1, 28($sp)
  addi $t0, $t1, 1
  sw $t0, 76($sp)
  sw $t1, 28($sp)
  lw $t0, 28($sp)
  lw $t1, 76($sp)
  move $t0, $t1
  sw $t0, 28($sp)
  sw $t1, 76($sp)
  lw $t0, 80($sp)
  lw $t1, 28($sp)
  move $t0, $t1
  sw $t0, 80($sp)
  sw $t1, 28($sp)
label8:
  j label3
label5:
  lw $t0, 56($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 56($sp)
  li $t8, 0
  addi $sp, $sp, 84
  move $v0, $t8
  jr $ra
