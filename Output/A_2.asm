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
  addi $sp, $sp, -40
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
  lw $t0, 4($sp)
  lw $t1, 16($sp)
  bgt $t0, $t1, label0
  sw $t0, 4($sp)
  sw $t1, 16($sp)
  j label1
label0:
  lw $t0, 24($sp)
  lw $t1, 16($sp)
  li $t8, 2
  mul $t0, $t1, $t8
  sw $t0, 24($sp)
  sw $t1, 16($sp)
  lw $t0, 4($sp)
  lw $t1, 24($sp)
  bgt $t0, $t1, label3
  sw $t0, 4($sp)
  sw $t1, 24($sp)
  j label4
label3:
  lw $t0, 4($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 4($sp)
  j label5
label4:
  lw $t0, 28($sp)
  lw $t1, 16($sp)
  li $t8, 2
  mul $t0, $t1, $t8
  sw $t0, 28($sp)
  sw $t1, 16($sp)
  lw $t0, 28($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 28($sp)
label5:
  j label2
label1:
  lw $t0, 4($sp)
  lw $t1, 16($sp)
  beq $t0, $t1, label6
  sw $t0, 4($sp)
  sw $t1, 16($sp)
  j label7
label6:
  lw $t0, 16($sp)
  li $t8, 100
  bgt $t0, $t8, label9
  sw $t0, 16($sp)
  j label10
label9:
  li $t8, 100
  move $a0, $t8
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  j label11
label10:
  lw $t0, 16($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 16($sp)
label11:
  j label8
label7:
  lw $t0, 32($sp)
  lw $t1, 4($sp)
  li $t8, 2
  mul $t0, $t1, $t8
  sw $t0, 32($sp)
  sw $t1, 4($sp)
  lw $t0, 32($sp)
  lw $t1, 16($sp)
  blt $t0, $t1, label12
  sw $t0, 32($sp)
  sw $t1, 16($sp)
  j label13
label12:
  lw $t0, 16($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 16($sp)
  j label14
label13:
  lw $t0, 36($sp)
  lw $t1, 4($sp)
  li $t8, 2
  mul $t0, $t1, $t8
  sw $t0, 36($sp)
  sw $t1, 4($sp)
  lw $t0, 36($sp)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, 36($sp)
label14:
label8:
label2:
  li $t8, 0
  addi $sp, $sp, 40
  move $v0, $t8
  jr $ra
