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

isPrime:
  addi $sp, $sp, -32
  sw $a0, 0($sp)
  lw $t0, 4($sp)
  lw $t1, 0($sp)
  li $t8, 4
  div $t1, $t8
  mflo $t0
  sw $t0, 4($sp)
  sw $t1, 0($sp)
  lw $t0, 8($sp)
  lw $t1, 4($sp)
  move $t0, $t1
  sw $t0, 8($sp)
  sw $t1, 4($sp)
  lw $t0, 12($sp)
  li $t0, 2
  sw $t0, 12($sp)
label0:
  lw $t0, 12($sp)
  lw $t1, 8($sp)
  blt $t0, $t1, label1
  sw $t0, 12($sp)
  sw $t1, 8($sp)
  j label2
label1:
  lw $t0, 16($sp)
  lw $t1, 0($sp)
  lw $t2, 12($sp)
  div $t1, $t2
  mflo $t0
  sw $t0, 16($sp)
  sw $t1, 0($sp)
  sw $t2, 12($sp)
  lw $t0, 20($sp)
  lw $t1, 16($sp)
  lw $t2, 12($sp)
  mul $t0, $t1, $t2
  sw $t0, 20($sp)
  sw $t1, 16($sp)
  sw $t2, 12($sp)
  lw $t0, 0($sp)
  lw $t1, 20($sp)
  beq $t0, $t1, label3
  sw $t0, 0($sp)
  sw $t1, 20($sp)
  j label4
label3:
  li $t8, 0
  addi $sp, $sp, 32
  move $v0, $t8
  jr $ra
label4:
  lw $t0, 24($sp)
  lw $t1, 12($sp)
  addi $t0, $t1, 1
  sw $t0, 24($sp)
  sw $t1, 12($sp)
  lw $t0, 12($sp)
  lw $t1, 24($sp)
  move $t0, $t1
  sw $t0, 12($sp)
  sw $t1, 24($sp)
  lw $t0, 28($sp)
  lw $t1, 12($sp)
  move $t0, $t1
  sw $t0, 28($sp)
  sw $t1, 12($sp)
  j label0
label2:
  li $t8, 1
  addi $sp, $sp, 32
  move $v0, $t8
  jr $ra
isRever:
  addi $sp, $sp, -152
  sw $a0, 0($sp)
  lw $t0, 4($sp)
  lw $t1, 0($sp)
  move $t0, $t1
  sw $t0, 4($sp)
  sw $t1, 0($sp)
  lw $t0, 48($sp)
  addi $t0, $sp, 8
  sw $t0, 48($sp)
  lw $t0, 52($sp)
  li $t0, 0
  sw $t0, 52($sp)
  lw $t0, 56($sp)
  li $t0, 0
  sw $t0, 56($sp)
label5:
  lw $t0, 4($sp)
  li $t8, 0
  bne $t0, $t8, label6
  sw $t0, 4($sp)
  j label7
label6:
  lw $t0, 60($sp)
  li $t8, 4
  lw $t1, 52($sp)
  mul $t0, $t8, $t1
  sw $t0, 60($sp)
  sw $t1, 52($sp)
  lw $t0, 64($sp)
  lw $t1, 48($sp)
  lw $t2, 60($sp)
  add $t0, $t1, $t2
  sw $t0, 64($sp)
  sw $t1, 48($sp)
  sw $t2, 60($sp)
  lw $t0, 68($sp)
  lw $t1, 64($sp)
  move $t0, $t1
  sw $t0, 68($sp)
  sw $t1, 64($sp)
  lw $t0, 72($sp)
  lw $t1, 4($sp)
  li $t8, 10
  div $t1, $t8
  mflo $t0
  sw $t0, 72($sp)
  sw $t1, 4($sp)
  lw $t0, 76($sp)
  lw $t1, 72($sp)
  li $t8, 10
  mul $t0, $t1, $t8
  sw $t0, 76($sp)
  sw $t1, 72($sp)
  lw $t0, 80($sp)
  lw $t1, 4($sp)
  lw $t2, 76($sp)
  sub $t0, $t1, $t2
  sw $t0, 80($sp)
  sw $t1, 4($sp)
  sw $t2, 76($sp)
  lw $t0, 68($sp)
  lw $t1, 80($sp)
  sw $t1, 0($t0)
  sw $t0, 68($sp)
  sw $t1, 80($sp)
  lw $t0, 84($sp)
  lw $t1, 80($sp)
  move $t0, $t1
  sw $t0, 84($sp)
  sw $t1, 80($sp)
  lw $t0, 88($sp)
  lw $t1, 4($sp)
  li $t8, 10
  div $t1, $t8
  mflo $t0
  sw $t0, 88($sp)
  sw $t1, 4($sp)
  lw $t0, 4($sp)
  lw $t1, 88($sp)
  move $t0, $t1
  sw $t0, 4($sp)
  sw $t1, 88($sp)
  lw $t0, 92($sp)
  lw $t1, 4($sp)
  move $t0, $t1
  sw $t0, 92($sp)
  sw $t1, 4($sp)
  lw $t0, 96($sp)
  lw $t1, 52($sp)
  addi $t0, $t1, 1
  sw $t0, 96($sp)
  sw $t1, 52($sp)
  lw $t0, 52($sp)
  lw $t1, 96($sp)
  move $t0, $t1
  sw $t0, 52($sp)
  sw $t1, 96($sp)
  lw $t0, 100($sp)
  lw $t1, 52($sp)
  move $t0, $t1
  sw $t0, 100($sp)
  sw $t1, 52($sp)
  j label5
label7:
  lw $t0, 104($sp)
  lw $t1, 52($sp)
  addi $t0, $t1, -1
  sw $t0, 104($sp)
  sw $t1, 52($sp)
  lw $t0, 52($sp)
  lw $t1, 104($sp)
  move $t0, $t1
  sw $t0, 52($sp)
  sw $t1, 104($sp)
  lw $t0, 108($sp)
  lw $t1, 52($sp)
  move $t0, $t1
  sw $t0, 108($sp)
  sw $t1, 52($sp)
label8:
  lw $t0, 56($sp)
  lw $t1, 52($sp)
  bne $t0, $t1, label9
  sw $t0, 56($sp)
  sw $t1, 52($sp)
  j label10
label9:
  lw $t0, 112($sp)
  li $t8, 4
  lw $t1, 56($sp)
  mul $t0, $t8, $t1
  sw $t0, 112($sp)
  sw $t1, 56($sp)
  lw $t0, 116($sp)
  lw $t1, 48($sp)
  lw $t2, 112($sp)
  add $t0, $t1, $t2
  sw $t0, 116($sp)
  sw $t1, 48($sp)
  sw $t2, 112($sp)
  lw $t0, 120($sp)
  lw $t1, 116($sp)
  move $t0, $t1
  sw $t0, 120($sp)
  sw $t1, 116($sp)
  lw $t0, 124($sp)
  li $t8, 4
  lw $t1, 52($sp)
  mul $t0, $t8, $t1
  sw $t0, 124($sp)
  sw $t1, 52($sp)
  lw $t0, 128($sp)
  lw $t1, 48($sp)
  lw $t2, 124($sp)
  add $t0, $t1, $t2
  sw $t0, 128($sp)
  sw $t1, 48($sp)
  sw $t2, 124($sp)
  lw $t0, 132($sp)
  lw $t1, 128($sp)
  move $t0, $t1
  sw $t0, 132($sp)
  sw $t1, 128($sp)
  lw $t9, 120($sp)
  lw $t0, 0($t9)
  lw $t9, 132($sp)
  lw $t1, 0($t9)
  bne $t0, $t1, label11
  j label12
label11:
  li $t8, 0
  addi $sp, $sp, 152
  move $v0, $t8
  jr $ra
label12:
  lw $t0, 136($sp)
  lw $t1, 56($sp)
  addi $t0, $t1, 1
  sw $t0, 136($sp)
  sw $t1, 56($sp)
  lw $t0, 56($sp)
  lw $t1, 136($sp)
  move $t0, $t1
  sw $t0, 56($sp)
  sw $t1, 136($sp)
  lw $t0, 140($sp)
  lw $t1, 56($sp)
  move $t0, $t1
  sw $t0, 140($sp)
  sw $t1, 56($sp)
  lw $t0, 144($sp)
  lw $t1, 52($sp)
  addi $t0, $t1, -1
  sw $t0, 144($sp)
  sw $t1, 52($sp)
  lw $t0, 52($sp)
  lw $t1, 144($sp)
  move $t0, $t1
  sw $t0, 52($sp)
  sw $t1, 144($sp)
  lw $t0, 148($sp)
  lw $t1, 52($sp)
  move $t0, $t1
  sw $t0, 148($sp)
  sw $t1, 52($sp)
  j label8
label10:
  li $t8, 1
  addi $sp, $sp, 152
  move $v0, $t8
  jr $ra
main:
  addi $sp, $sp, -32
  lw $t0, 0($sp)
  li $t0, 100
  sw $t0, 0($sp)
  lw $t0, 4($sp)
  li $t0, 110
  sw $t0, 4($sp)
  lw $t0, 8($sp)
  lw $t1, 0($sp)
  move $t0, $t1
  sw $t0, 8($sp)
  sw $t1, 0($sp)
label13:
  lw $t0, 8($sp)
  lw $t1, 4($sp)
  blt $t0, $t1, label14
  sw $t0, 8($sp)
  sw $t1, 4($sp)
  j label15
label14:
  lw $t0, 8($sp)
  move $a0, $t0
  lw $t1, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal isPrime
  move $t1, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t1, 12($sp)
  lw $t1, 12($sp)
  li $t8, 1
  beq $t1, $t8, label16
  sw $t1, 12($sp)
  j label17
label16:
  lw $t1, 8($sp)
  move $a0, $t1
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t1, 8($sp)
label17:
  lw $t1, 8($sp)
  move $a0, $t1
  lw $t2, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal isRever
  move $t2, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t2, 16($sp)
  lw $t2, 16($sp)
  li $t8, 1
  beq $t2, $t8, label18
  sw $t2, 16($sp)
  j label19
label18:
  lw $t2, 20($sp)
  li $t8, 0
  lw $t3, 8($sp)
  sub $t2, $t8, $t3
  sw $t2, 20($sp)
  sw $t3, 8($sp)
  lw $t2, 20($sp)
  move $a0, $t2
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t2, 20($sp)
label19:
  lw $t2, 24($sp)
  lw $t3, 8($sp)
  addi $t2, $t3, 1
  sw $t2, 24($sp)
  sw $t3, 8($sp)
  lw $t2, 8($sp)
  lw $t3, 24($sp)
  move $t2, $t3
  sw $t2, 8($sp)
  sw $t3, 24($sp)
  lw $t2, 28($sp)
  lw $t3, 8($sp)
  move $t2, $t3
  sw $t2, 28($sp)
  sw $t3, 8($sp)
  j label13
label15:
  li $t8, 0
  addi $sp, $sp, 32
  move $v0, $t8
  jr $ra
