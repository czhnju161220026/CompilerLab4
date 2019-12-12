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
  addi $sp, $sp, -228
  lw $t0, 20($sp)
  addi $t0, $sp, 0
  sw $t0, 20($sp)
  lw $t0, 24($sp)
  li $t0, 0
  sw $t0, 24($sp)
  lw $t0, 28($sp)
  lw $t1, 24($sp)
  move $t0, $t1
  sw $t0, 28($sp)
  sw $t1, 24($sp)
label0:
  lw $t0, 24($sp)
  li $t8, 5
  blt $t0, $t8, label1
  sw $t0, 24($sp)
  j label2
label1:
  lw $t0, 32($sp)
  li $t8, 4
  lw $t1, 24($sp)
  mul $t0, $t8, $t1
  sw $t0, 32($sp)
  sw $t1, 24($sp)
  lw $t0, 36($sp)
  lw $t1, 20($sp)
  lw $t2, 32($sp)
  add $t0, $t1, $t2
  sw $t0, 36($sp)
  sw $t1, 20($sp)
  sw $t2, 32($sp)
  lw $t0, 40($sp)
  lw $t1, 36($sp)
  move $t0, $t1
  sw $t0, 40($sp)
  sw $t1, 36($sp)
  lw $t0, 44($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 44($sp)
  lw $t0, 40($sp)
  lw $t1, 44($sp)
  sw $t1, 0($t0)
  sw $t0, 40($sp)
  sw $t1, 44($sp)
  lw $t0, 48($sp)
  lw $t1, 44($sp)
  move $t0, $t1
  sw $t0, 48($sp)
  sw $t1, 44($sp)
  lw $t0, 52($sp)
  lw $t1, 24($sp)
  addi $t0, $t1, 1
  sw $t0, 52($sp)
  sw $t1, 24($sp)
  lw $t0, 24($sp)
  lw $t1, 52($sp)
  move $t0, $t1
  sw $t0, 24($sp)
  sw $t1, 52($sp)
  lw $t0, 56($sp)
  lw $t1, 24($sp)
  move $t0, $t1
  sw $t0, 56($sp)
  sw $t1, 24($sp)
  j label0
label2:
  lw $t0, 60($sp)
  li $t0, 1
  sw $t0, 60($sp)
  lw $t0, 64($sp)
  lw $t1, 60($sp)
  move $t0, $t1
  sw $t0, 64($sp)
  sw $t1, 60($sp)
label3:
  lw $t0, 60($sp)
  li $t8, 1
  beq $t0, $t8, label4
  sw $t0, 60($sp)
  j label5
label4:
  lw $t0, 60($sp)
  li $t0, 0
  sw $t0, 60($sp)
  lw $t0, 68($sp)
  lw $t1, 60($sp)
  move $t0, $t1
  sw $t0, 68($sp)
  sw $t1, 60($sp)
  lw $t0, 24($sp)
  li $t0, 1
  sw $t0, 24($sp)
  lw $t0, 72($sp)
  lw $t1, 24($sp)
  move $t0, $t1
  sw $t0, 72($sp)
  sw $t1, 24($sp)
label6:
  lw $t0, 24($sp)
  li $t8, 5
  blt $t0, $t8, label7
  sw $t0, 24($sp)
  j label8
label7:
  lw $t0, 76($sp)
  lw $t1, 24($sp)
  move $t0, $t1
  sw $t0, 76($sp)
  sw $t1, 24($sp)
  lw $t0, 80($sp)
  lw $t1, 76($sp)
  move $t0, $t1
  sw $t0, 80($sp)
  sw $t1, 76($sp)
label9:
  lw $t0, 76($sp)
  li $t8, 0
  bgt $t0, $t8, label12
  sw $t0, 76($sp)
  j label11
label12:
  lw $t0, 84($sp)
  li $t8, 4
  lw $t1, 76($sp)
  mul $t0, $t8, $t1
  sw $t0, 84($sp)
  sw $t1, 76($sp)
  lw $t0, 88($sp)
  lw $t1, 20($sp)
  lw $t2, 84($sp)
  add $t0, $t1, $t2
  sw $t0, 88($sp)
  sw $t1, 20($sp)
  sw $t2, 84($sp)
  lw $t0, 92($sp)
  lw $t1, 88($sp)
  move $t0, $t1
  sw $t0, 92($sp)
  sw $t1, 88($sp)
  lw $t0, 96($sp)
  lw $t1, 76($sp)
  addi $t0, $t1, -1
  sw $t0, 96($sp)
  sw $t1, 76($sp)
  lw $t0, 100($sp)
  li $t8, 4
  lw $t1, 96($sp)
  mul $t0, $t8, $t1
  sw $t0, 100($sp)
  sw $t1, 96($sp)
  lw $t0, 104($sp)
  lw $t1, 20($sp)
  lw $t2, 100($sp)
  add $t0, $t1, $t2
  sw $t0, 104($sp)
  sw $t1, 20($sp)
  sw $t2, 100($sp)
  lw $t0, 108($sp)
  lw $t1, 104($sp)
  move $t0, $t1
  sw $t0, 108($sp)
  sw $t1, 104($sp)
  lw $t9, 92($sp)
  lw $t0, 0($t9)
  lw $t9, 108($sp)
  lw $t1, 0($t9)
  blt $t0, $t1, label10
  j label11
label10:
  lw $t0, 112($sp)
  li $t8, 4
  lw $t1, 76($sp)
  mul $t0, $t8, $t1
  sw $t0, 112($sp)
  sw $t1, 76($sp)
  lw $t0, 116($sp)
  lw $t1, 20($sp)
  lw $t2, 112($sp)
  add $t0, $t1, $t2
  sw $t0, 116($sp)
  sw $t1, 20($sp)
  sw $t2, 112($sp)
  lw $t0, 120($sp)
  lw $t1, 116($sp)
  move $t0, $t1
  sw $t0, 120($sp)
  sw $t1, 116($sp)
  lw $t0, 124($sp)
  lw $t1, 120($sp)
  lw $t0, 0($t1)
  sw $t0, 124($sp)
  sw $t1, 120($sp)
  lw $t0, 128($sp)
  lw $t1, 124($sp)
  move $t0, $t1
  sw $t0, 128($sp)
  sw $t1, 124($sp)
  lw $t0, 132($sp)
  li $t8, 4
  lw $t1, 76($sp)
  mul $t0, $t8, $t1
  sw $t0, 132($sp)
  sw $t1, 76($sp)
  lw $t0, 136($sp)
  lw $t1, 20($sp)
  lw $t2, 132($sp)
  add $t0, $t1, $t2
  sw $t0, 136($sp)
  sw $t1, 20($sp)
  sw $t2, 132($sp)
  lw $t0, 140($sp)
  lw $t1, 136($sp)
  move $t0, $t1
  sw $t0, 140($sp)
  sw $t1, 136($sp)
  lw $t0, 144($sp)
  lw $t1, 76($sp)
  addi $t0, $t1, -1
  sw $t0, 144($sp)
  sw $t1, 76($sp)
  lw $t0, 148($sp)
  li $t8, 4
  lw $t1, 144($sp)
  mul $t0, $t8, $t1
  sw $t0, 148($sp)
  sw $t1, 144($sp)
  lw $t0, 152($sp)
  lw $t1, 20($sp)
  lw $t2, 148($sp)
  add $t0, $t1, $t2
  sw $t0, 152($sp)
  sw $t1, 20($sp)
  sw $t2, 148($sp)
  lw $t0, 156($sp)
  lw $t1, 152($sp)
  move $t0, $t1
  sw $t0, 156($sp)
  sw $t1, 152($sp)
  lw $t0, 140($sp)
  lw $t9, 156($sp)
  lw $t1, 0($t9)
  sw $t1, 0($t0)
  sw $t0, 140($sp)
  lw $t0, 160($sp)
  lw $t1, 156($sp)
  lw $t0, 0($t1)
  sw $t0, 160($sp)
  sw $t1, 156($sp)
  lw $t0, 164($sp)
  lw $t1, 76($sp)
  addi $t0, $t1, -1
  sw $t0, 164($sp)
  sw $t1, 76($sp)
  lw $t0, 168($sp)
  li $t8, 4
  lw $t1, 164($sp)
  mul $t0, $t8, $t1
  sw $t0, 168($sp)
  sw $t1, 164($sp)
  lw $t0, 172($sp)
  lw $t1, 20($sp)
  lw $t2, 168($sp)
  add $t0, $t1, $t2
  sw $t0, 172($sp)
  sw $t1, 20($sp)
  sw $t2, 168($sp)
  lw $t0, 176($sp)
  lw $t1, 172($sp)
  move $t0, $t1
  sw $t0, 176($sp)
  sw $t1, 172($sp)
  lw $t0, 176($sp)
  lw $t1, 124($sp)
  sw $t1, 0($t0)
  sw $t0, 176($sp)
  sw $t1, 124($sp)
  lw $t0, 180($sp)
  lw $t1, 124($sp)
  move $t0, $t1
  sw $t0, 180($sp)
  sw $t1, 124($sp)
  lw $t0, 60($sp)
  li $t0, 1
  sw $t0, 60($sp)
  lw $t0, 184($sp)
  lw $t1, 60($sp)
  move $t0, $t1
  sw $t0, 184($sp)
  sw $t1, 60($sp)
  lw $t0, 188($sp)
  lw $t1, 76($sp)
  addi $t0, $t1, -1
  sw $t0, 188($sp)
  sw $t1, 76($sp)
  lw $t0, 76($sp)
  lw $t1, 188($sp)
  move $t0, $t1
  sw $t0, 76($sp)
  sw $t1, 188($sp)
  lw $t0, 192($sp)
  lw $t1, 76($sp)
  move $t0, $t1
  sw $t0, 192($sp)
  sw $t1, 76($sp)
  j label9
label11:
  lw $t0, 196($sp)
  lw $t1, 24($sp)
  addi $t0, $t1, 1
  sw $t0, 196($sp)
  sw $t1, 24($sp)
  lw $t0, 24($sp)
  lw $t1, 196($sp)
  move $t0, $t1
  sw $t0, 24($sp)
  sw $t1, 196($sp)
  lw $t0, 200($sp)
  lw $t1, 24($sp)
  move $t0, $t1
  sw $t0, 200($sp)
  sw $t1, 24($sp)
  j label6
label8:
  j label3
label5:
  lw $t0, 24($sp)
  li $t0, 0
  sw $t0, 24($sp)
  lw $t0, 204($sp)
  lw $t1, 24($sp)
  move $t0, $t1
  sw $t0, 204($sp)
  sw $t1, 24($sp)
label13:
  lw $t0, 24($sp)
  li $t8, 5
  blt $t0, $t8, label14
  sw $t0, 24($sp)
  j label15
label14:
  lw $t0, 208($sp)
  li $t8, 4
  lw $t1, 24($sp)
  mul $t0, $t8, $t1
  sw $t0, 208($sp)
  sw $t1, 24($sp)
  lw $t0, 212($sp)
  lw $t1, 20($sp)
  lw $t2, 208($sp)
  add $t0, $t1, $t2
  sw $t0, 212($sp)
  sw $t1, 20($sp)
  sw $t2, 208($sp)
  lw $t0, 216($sp)
  lw $t1, 212($sp)
  move $t0, $t1
  sw $t0, 216($sp)
  sw $t1, 212($sp)
  lw $t9, 216($sp)
  lw $t0, 0($t9)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  lw $t0, 220($sp)
  lw $t1, 24($sp)
  addi $t0, $t1, 1
  sw $t0, 220($sp)
  sw $t1, 24($sp)
  lw $t0, 24($sp)
  lw $t1, 220($sp)
  move $t0, $t1
  sw $t0, 24($sp)
  sw $t1, 220($sp)
  lw $t0, 224($sp)
  lw $t1, 24($sp)
  move $t0, $t1
  sw $t0, 224($sp)
  sw $t1, 24($sp)
  j label13
label15:
  li $t8, 0
  addi $sp, $sp, 228
  move $v0, $t8
  jr $ra
