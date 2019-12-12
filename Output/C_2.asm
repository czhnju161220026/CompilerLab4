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

mod:
  addi $sp, $sp, -28
  sw $a0, 0($sp)
  sw $a1, 4($sp)
  lw $t0, 8($sp)
  lw $t1, 4($sp)
  lw $t2, 0($sp)
  div $t1, $t2
  mflo $t0
  sw $t0, 8($sp)
  sw $t1, 4($sp)
  sw $t2, 0($sp)
  lw $t0, 12($sp)
  lw $t1, 8($sp)
  lw $t2, 0($sp)
  mul $t0, $t1, $t2
  sw $t0, 12($sp)
  sw $t1, 8($sp)
  sw $t2, 0($sp)
  lw $t0, 16($sp)
  lw $t1, 4($sp)
  lw $t2, 12($sp)
  sub $t0, $t1, $t2
  sw $t0, 16($sp)
  sw $t1, 4($sp)
  sw $t2, 12($sp)
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
  lw $t0, 20($sp)
  addi $sp, $sp, 28
  move $v0, $t0
  jr $ra
  sw $t0, 20($sp)
power:
  addi $sp, $sp, -68
  sw $a0, 0($sp)
  sw $a1, 4($sp)
  lw $t0, 8($sp)
  lw $t1, 0($sp)
  addi $t0, $t1, 1
  sw $t0, 8($sp)
  sw $t1, 0($sp)
  lw $t0, 12($sp)
  lw $t1, 8($sp)
  lw $t2, 0($sp)
  sub $t0, $t1, $t2
  sw $t0, 12($sp)
  sw $t1, 8($sp)
  sw $t2, 0($sp)
  lw $t0, 16($sp)
  lw $t1, 12($sp)
  move $t0, $t1
  sw $t0, 16($sp)
  sw $t1, 12($sp)
label0:
  lw $t0, 20($sp)
  lw $t1, 16($sp)
  lw $t2, 16($sp)
  sub $t0, $t1, $t2
  sw $t0, 20($sp)
  sw $t1, 16($sp)
  sw $t2, 16($sp)
  lw $t0, 24($sp)
  lw $t1, 20($sp)
  addi $t0, $t1, 90
  sw $t0, 24($sp)
  sw $t1, 20($sp)
  lw $t0, 28($sp)
  lw $t1, 24($sp)
  addi $t0, $t1, -89
  sw $t0, 28($sp)
  sw $t1, 24($sp)
  lw $t0, 32($sp)
  lw $t1, 28($sp)
  addi $t0, $t1, 1
  sw $t0, 32($sp)
  sw $t1, 28($sp)
  lw $t0, 36($sp)
  lw $t1, 32($sp)
  addi $t0, $t1, -2
  sw $t0, 36($sp)
  sw $t1, 32($sp)
  lw $t0, 0($sp)
  lw $t1, 36($sp)
  bgt $t0, $t1, label1
  sw $t0, 0($sp)
  sw $t1, 36($sp)
  j label2
label1:
  lw $t0, 40($sp)
  lw $t1, 16($sp)
  lw $t2, 4($sp)
  mul $t0, $t1, $t2
  sw $t0, 40($sp)
  sw $t1, 16($sp)
  sw $t2, 4($sp)
  lw $t0, 16($sp)
  lw $t1, 40($sp)
  move $t0, $t1
  sw $t0, 16($sp)
  sw $t1, 40($sp)
  lw $t0, 44($sp)
  lw $t1, 16($sp)
  move $t0, $t1
  sw $t0, 44($sp)
  sw $t1, 16($sp)
  lw $t0, 48($sp)
  li $t8, 2
  lw $t1, 0($sp)
  mul $t0, $t8, $t1
  sw $t0, 48($sp)
  sw $t1, 0($sp)
  lw $t0, 52($sp)
  li $t8, 1
  lw $t1, 0($sp)
  mul $t0, $t8, $t1
  sw $t0, 52($sp)
  sw $t1, 0($sp)
  lw $t0, 56($sp)
  lw $t1, 48($sp)
  lw $t2, 52($sp)
  sub $t0, $t1, $t2
  sw $t0, 56($sp)
  sw $t1, 48($sp)
  sw $t2, 52($sp)
  lw $t0, 60($sp)
  lw $t1, 56($sp)
  addi $t0, $t1, -1
  sw $t0, 60($sp)
  sw $t1, 56($sp)
  lw $t0, 0($sp)
  lw $t1, 60($sp)
  move $t0, $t1
  sw $t0, 0($sp)
  sw $t1, 60($sp)
  lw $t0, 64($sp)
  lw $t1, 0($sp)
  move $t0, $t1
  sw $t0, 64($sp)
  sw $t1, 0($sp)
  j label0
label2:
  lw $t0, 16($sp)
  addi $sp, $sp, 68
  move $v0, $t0
  jr $ra
  sw $t0, 16($sp)
getNumDigits:
  addi $sp, $sp, -44
  sw $a0, 0($sp)
  lw $t0, 4($sp)
  li $t0, 0
  sw $t0, 4($sp)
  lw $t0, 0($sp)
  li $t8, 0
  blt $t0, $t8, label3
  sw $t0, 0($sp)
  j label4
label3:
  lw $t0, 8($sp)
  li $t8, 0
  li $t8, 1
  sub $t0, $t8, $t8
  sw $t0, 8($sp)
  lw $t0, 8($sp)
  addi $sp, $sp, 44
  move $v0, $t0
  jr $ra
  sw $t0, 8($sp)
label4:
label5:
  lw $t0, 0($sp)
  li $t8, 0
  bgt $t0, $t8, label6
  sw $t0, 0($sp)
  j label7
label6:
  lw $t0, 12($sp)
  lw $t1, 0($sp)
  li $t8, 10
  div $t1, $t8
  mflo $t0
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
  lw $t0, 20($sp)
  lw $t1, 4($sp)
  addi $t0, $t1, 2
  sw $t0, 20($sp)
  sw $t1, 4($sp)
  lw $t0, 4($sp)
  lw $t1, 20($sp)
  move $t0, $t1
  sw $t0, 4($sp)
  sw $t1, 20($sp)
  lw $t0, 24($sp)
  lw $t1, 4($sp)
  move $t0, $t1
  sw $t0, 24($sp)
  sw $t1, 4($sp)
  lw $t0, 28($sp)
  lw $t1, 4($sp)
  addi $t0, $t1, 2
  sw $t0, 28($sp)
  sw $t1, 4($sp)
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
  lw $t0, 36($sp)
  lw $t1, 4($sp)
  addi $t0, $t1, -3
  sw $t0, 36($sp)
  sw $t1, 4($sp)
  lw $t0, 4($sp)
  lw $t1, 36($sp)
  move $t0, $t1
  sw $t0, 4($sp)
  sw $t1, 36($sp)
  lw $t0, 40($sp)
  lw $t1, 4($sp)
  move $t0, $t1
  sw $t0, 40($sp)
  sw $t1, 4($sp)
  j label5
label7:
  lw $t0, 4($sp)
  addi $sp, $sp, 44
  move $v0, $t0
  jr $ra
  sw $t0, 4($sp)
isNarcissistic:
  addi $sp, $sp, -64
  sw $a0, 0($sp)
  lw $t0, 4($sp)
  lw $t1, 0($sp)
  addi $t0, $t1, 1
  sw $t0, 4($sp)
  sw $t1, 0($sp)
  lw $t0, 8($sp)
  lw $t1, 4($sp)
  addi $t0, $t1, -1
  sw $t0, 8($sp)
  sw $t1, 4($sp)
  lw $t0, 8($sp)
  move $a0, $t0
  lw $t1, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal getNumDigits
  move $t1, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t1, 12($sp)
  lw $t1, 16($sp)
  lw $t2, 12($sp)
  move $t1, $t2
  sw $t1, 16($sp)
  sw $t2, 12($sp)
  lw $t1, 20($sp)
  li $t1, 0
  sw $t1, 20($sp)
  lw $t1, 24($sp)
  lw $t2, 0($sp)
  move $t1, $t2
  sw $t1, 24($sp)
  sw $t2, 0($sp)
label8:
  lw $t1, 24($sp)
  li $t8, 0
  bgt $t1, $t8, label9
  sw $t1, 24($sp)
  j label10
label9:
  li $t8, 10
  move $a0, $t8
  lw $t1, 24($sp)
  move $a1, $t1
  lw $t2, 28($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal mod
  move $t2, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t2, 28($sp)
  lw $t2, 32($sp)
  lw $t3, 28($sp)
  move $t2, $t3
  sw $t2, 32($sp)
  sw $t3, 28($sp)
  lw $t2, 36($sp)
  lw $t3, 32($sp)
  move $t2, $t3
  sw $t2, 36($sp)
  sw $t3, 32($sp)
  lw $t2, 40($sp)
  lw $t3, 24($sp)
  lw $t4, 32($sp)
  sub $t2, $t3, $t4
  sw $t2, 40($sp)
  sw $t3, 24($sp)
  sw $t4, 32($sp)
  lw $t2, 44($sp)
  lw $t3, 40($sp)
  li $t8, 10
  div $t3, $t8
  mflo $t2
  sw $t2, 44($sp)
  sw $t3, 40($sp)
  lw $t2, 24($sp)
  lw $t3, 44($sp)
  move $t2, $t3
  sw $t2, 24($sp)
  sw $t3, 44($sp)
  lw $t2, 48($sp)
  lw $t3, 24($sp)
  move $t2, $t3
  sw $t2, 48($sp)
  sw $t3, 24($sp)
  lw $t2, 16($sp)
  move $a0, $t2
  lw $t3, 32($sp)
  move $a1, $t3
  lw $t4, 52($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal power
  move $t4, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t4, 52($sp)
  lw $t4, 56($sp)
  lw $t5, 20($sp)
  lw $t6, 52($sp)
  add $t4, $t5, $t6
  sw $t4, 56($sp)
  sw $t5, 20($sp)
  sw $t6, 52($sp)
  lw $t4, 20($sp)
  lw $t5, 56($sp)
  move $t4, $t5
  sw $t4, 20($sp)
  sw $t5, 56($sp)
  lw $t4, 60($sp)
  lw $t5, 20($sp)
  move $t4, $t5
  sw $t4, 60($sp)
  sw $t5, 20($sp)
  j label8
label10:
  lw $t4, 20($sp)
  lw $t5, 0($sp)
  beq $t4, $t5, label11
  sw $t4, 20($sp)
  sw $t5, 0($sp)
  j label12
label11:
  li $t8, 1
  addi $sp, $sp, 64
  move $v0, $t8
  jr $ra
  j label13
label12:
  li $t8, 0
  addi $sp, $sp, 64
  move $v0, $t8
  jr $ra
label13:
main:
  addi $sp, $sp, -28
  lw $t0, 0($sp)
  li $t0, 0
  sw $t0, 0($sp)
  lw $t0, 4($sp)
  li $t0, 300
  sw $t0, 4($sp)
label14:
  lw $t0, 4($sp)
  li $t8, 500
  blt $t0, $t8, label15
  sw $t0, 4($sp)
  j label16
label15:
  lw $t0, 4($sp)
  move $a0, $t0
  lw $t1, 8($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal isNarcissistic
  move $t1, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t1, 8($sp)
  lw $t1, 8($sp)
  li $t8, 1
  beq $t1, $t8, label17
  sw $t1, 8($sp)
  j label18
label17:
  lw $t1, 4($sp)
  move $a0, $t1
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t1, 4($sp)
  lw $t1, 12($sp)
  lw $t2, 0($sp)
  addi $t1, $t2, 1
  sw $t1, 12($sp)
  sw $t2, 0($sp)
  lw $t1, 0($sp)
  lw $t2, 12($sp)
  move $t1, $t2
  sw $t1, 0($sp)
  sw $t2, 12($sp)
  lw $t1, 16($sp)
  lw $t2, 0($sp)
  move $t1, $t2
  sw $t1, 16($sp)
  sw $t2, 0($sp)
label18:
  lw $t1, 20($sp)
  lw $t2, 4($sp)
  addi $t1, $t2, 1
  sw $t1, 20($sp)
  sw $t2, 4($sp)
  lw $t1, 4($sp)
  lw $t2, 20($sp)
  move $t1, $t2
  sw $t1, 4($sp)
  sw $t2, 20($sp)
  lw $t1, 24($sp)
  lw $t2, 4($sp)
  move $t1, $t2
  sw $t1, 24($sp)
  sw $t2, 4($sp)
  j label14
label16:
  lw $t1, 0($sp)
  move $a0, $t1
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t1, 0($sp)
  lw $t1, 0($sp)
  addi $sp, $sp, 28
  move $v0, $t1
  jr $ra
  sw $t1, 0($sp)
