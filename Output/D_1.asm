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

process:
  addi $sp, $sp, -116
  sw $a0, 0($sp)
  lw $t0, 4($sp)
  li $t0, 3
  sw $t0, 4($sp)
  lw $t0, 4($sp)
  li $t0, 36
  sw $t0, 4($sp)
  lw $t0, 8($sp)
  lw $t1, 4($sp)
  move $t0, $t1
  sw $t0, 8($sp)
  sw $t1, 4($sp)
  lw $t0, 12($sp)
  lw $t1, 0($sp)
  li $t8, 642
  mul $t0, $t1, $t8
  sw $t0, 12($sp)
  sw $t1, 0($sp)
  lw $t0, 16($sp)
  lw $t1, 0($sp)
  lw $t2, 4($sp)
  mul $t0, $t1, $t2
  sw $t0, 16($sp)
  sw $t1, 0($sp)
  sw $t2, 4($sp)
  lw $t0, 20($sp)
  lw $t1, 12($sp)
  lw $t2, 16($sp)
  add $t0, $t1, $t2
  sw $t0, 20($sp)
  sw $t1, 12($sp)
  sw $t2, 16($sp)
  lw $t0, 24($sp)
  lw $t1, 20($sp)
  lw $t2, 0($sp)
  sub $t0, $t1, $t2
  sw $t0, 24($sp)
  sw $t1, 20($sp)
  sw $t2, 0($sp)
  lw $t0, 28($sp)
  lw $t1, 4($sp)
  lw $t2, 0($sp)
  mul $t0, $t1, $t2
  sw $t0, 28($sp)
  sw $t1, 4($sp)
  sw $t2, 0($sp)
  lw $t0, 32($sp)
  lw $t1, 24($sp)
  lw $t2, 28($sp)
  add $t0, $t1, $t2
  sw $t0, 32($sp)
  sw $t1, 24($sp)
  sw $t2, 28($sp)
  lw $t0, 36($sp)
  lw $t1, 4($sp)
  lw $t2, 4($sp)
  mul $t0, $t1, $t2
  sw $t0, 36($sp)
  sw $t1, 4($sp)
  sw $t2, 4($sp)
  lw $t0, 40($sp)
  lw $t1, 32($sp)
  lw $t2, 36($sp)
  add $t0, $t1, $t2
  sw $t0, 40($sp)
  sw $t1, 32($sp)
  sw $t2, 36($sp)
  lw $t0, 44($sp)
  lw $t1, 40($sp)
  lw $t2, 0($sp)
  add $t0, $t1, $t2
  sw $t0, 44($sp)
  sw $t1, 40($sp)
  sw $t2, 0($sp)
  lw $t0, 48($sp)
  lw $t1, 44($sp)
  lw $t2, 0($sp)
  add $t0, $t1, $t2
  sw $t0, 48($sp)
  sw $t1, 44($sp)
  sw $t2, 0($sp)
  lw $t0, 52($sp)
  lw $t1, 48($sp)
  addi $t0, $t1, -23
  sw $t0, 52($sp)
  sw $t1, 48($sp)
  lw $t0, 56($sp)
  lw $t1, 52($sp)
  addi $t0, $t1, 45
  sw $t0, 56($sp)
  sw $t1, 52($sp)
  lw $t0, 4($sp)
  lw $t1, 56($sp)
  move $t0, $t1
  sw $t0, 4($sp)
  sw $t1, 56($sp)
  lw $t0, 60($sp)
  lw $t1, 4($sp)
  move $t0, $t1
  sw $t0, 60($sp)
  sw $t1, 4($sp)
  lw $t0, 64($sp)
  lw $t1, 4($sp)
  li $t8, 3
  div $t1, $t8
  mflo $t0
  sw $t0, 64($sp)
  sw $t1, 4($sp)
  lw $t0, 68($sp)
  lw $t1, 64($sp)
  addi $t0, $t1, 336
  sw $t0, 68($sp)
  sw $t1, 64($sp)
  lw $t0, 72($sp)
  lw $t1, 0($sp)
  li $t8, 12
  mul $t0, $t1, $t8
  sw $t0, 72($sp)
  sw $t1, 0($sp)
  lw $t0, 76($sp)
  lw $t1, 72($sp)
  li $t8, 4
  div $t1, $t8
  mflo $t0
  sw $t0, 76($sp)
  sw $t1, 72($sp)
  lw $t0, 80($sp)
  lw $t1, 68($sp)
  lw $t2, 76($sp)
  sub $t0, $t1, $t2
  sw $t0, 80($sp)
  sw $t1, 68($sp)
  sw $t2, 76($sp)
  lw $t0, 84($sp)
  lw $t1, 80($sp)
  addi $t0, $t1, -60
  sw $t0, 84($sp)
  sw $t1, 80($sp)
  lw $t0, 88($sp)
  lw $t1, 4($sp)
  li $t8, 12
  div $t1, $t8
  mflo $t0
  sw $t0, 88($sp)
  sw $t1, 4($sp)
  lw $t0, 92($sp)
  lw $t1, 88($sp)
  li $t8, 24
  mul $t0, $t1, $t8
  sw $t0, 92($sp)
  sw $t1, 88($sp)
  lw $t0, 96($sp)
  lw $t1, 84($sp)
  lw $t2, 92($sp)
  add $t0, $t1, $t2
  sw $t0, 96($sp)
  sw $t1, 84($sp)
  sw $t2, 92($sp)
  lw $t0, 100($sp)
  lw $t1, 96($sp)
  addi $t0, $t1, 37
  sw $t0, 100($sp)
  sw $t1, 96($sp)
  lw $t0, 4($sp)
  lw $t1, 100($sp)
  move $t0, $t1
  sw $t0, 4($sp)
  sw $t1, 100($sp)
  lw $t0, 104($sp)
  lw $t1, 4($sp)
  move $t0, $t1
  sw $t0, 104($sp)
  sw $t1, 4($sp)
  lw $t0, 108($sp)
  lw $t1, 0($sp)
  addi $t0, $t1, 25
  sw $t0, 108($sp)
  sw $t1, 0($sp)
  lw $t0, 4($sp)
  lw $t1, 108($sp)
  move $t0, $t1
  sw $t0, 4($sp)
  sw $t1, 108($sp)
  lw $t0, 112($sp)
  lw $t1, 4($sp)
  move $t0, $t1
  sw $t0, 112($sp)
  sw $t1, 4($sp)
  lw $t0, 4($sp)
  addi $sp, $sp, 116
  move $v0, $t0
  jr $ra
  sw $t0, 4($sp)
main:
  addi $sp, $sp, -344
  lw $t0, 0($sp)
  li $t0, 13
  sw $t0, 0($sp)
  lw $t0, 4($sp)
  li $t0, 20
  sw $t0, 4($sp)
  lw $t0, 8($sp)
  li $t0, 15
  sw $t0, 8($sp)
  lw $t0, 12($sp)
  lw $t1, 0($sp)
  lw $t2, 4($sp)
  add $t0, $t1, $t2
  sw $t0, 12($sp)
  sw $t1, 0($sp)
  sw $t2, 4($sp)
  lw $t0, 16($sp)
  lw $t1, 12($sp)
  lw $t2, 8($sp)
  add $t0, $t1, $t2
  sw $t0, 16($sp)
  sw $t1, 12($sp)
  sw $t2, 8($sp)
  lw $t0, 20($sp)
  lw $t1, 16($sp)
  move $t0, $t1
  sw $t0, 20($sp)
  sw $t1, 16($sp)
  lw $t0, 24($sp)
  lw $t1, 0($sp)
  lw $t2, 4($sp)
  mul $t0, $t1, $t2
  sw $t0, 24($sp)
  sw $t1, 0($sp)
  sw $t2, 4($sp)
  lw $t0, 28($sp)
  lw $t1, 8($sp)
  li $t8, 2
  div $t1, $t8
  mflo $t0
  sw $t0, 28($sp)
  sw $t1, 8($sp)
  lw $t0, 32($sp)
  lw $t1, 24($sp)
  lw $t2, 28($sp)
  add $t0, $t1, $t2
  sw $t0, 32($sp)
  sw $t1, 24($sp)
  sw $t2, 28($sp)
  lw $t0, 36($sp)
  lw $t1, 32($sp)
  move $t0, $t1
  sw $t0, 36($sp)
  sw $t1, 32($sp)
  lw $t0, 40($sp)
  lw $t1, 0($sp)
  lw $t2, 4($sp)
  sub $t0, $t1, $t2
  sw $t0, 40($sp)
  sw $t1, 0($sp)
  sw $t2, 4($sp)
  lw $t0, 44($sp)
  lw $t1, 40($sp)
  lw $t2, 8($sp)
  sub $t0, $t1, $t2
  sw $t0, 44($sp)
  sw $t1, 40($sp)
  sw $t2, 8($sp)
  lw $t0, 48($sp)
  lw $t1, 44($sp)
  move $t0, $t1
  sw $t0, 48($sp)
  sw $t1, 44($sp)
  lw $t0, 52($sp)
  li $t0, 42
  sw $t0, 52($sp)
  lw $t0, 56($sp)
  li $t0, 0
  sw $t0, 56($sp)
  lw $t0, 60($sp)
  lw $t1, 0($sp)
  lw $t2, 4($sp)
  add $t0, $t1, $t2
  sw $t0, 60($sp)
  sw $t1, 0($sp)
  sw $t2, 4($sp)
  lw $t0, 64($sp)
  lw $t1, 60($sp)
  lw $t2, 8($sp)
  add $t0, $t1, $t2
  sw $t0, 64($sp)
  sw $t1, 60($sp)
  sw $t2, 8($sp)
  lw $t0, 68($sp)
  lw $t1, 64($sp)
  addi $t0, $t1, 2000
  sw $t0, 68($sp)
  sw $t1, 64($sp)
  lw $t0, 72($sp)
  lw $t1, 68($sp)
  lw $t2, 48($sp)
  sub $t0, $t1, $t2
  sw $t0, 72($sp)
  sw $t1, 68($sp)
  sw $t2, 48($sp)
  lw $t0, 48($sp)
  lw $t1, 72($sp)
  move $t0, $t1
  sw $t0, 48($sp)
  sw $t1, 72($sp)
  lw $t0, 76($sp)
  lw $t1, 48($sp)
  move $t0, $t1
  sw $t0, 76($sp)
  sw $t1, 48($sp)
label0:
  lw $t0, 80($sp)
  lw $t1, 0($sp)
  lw $t2, 4($sp)
  add $t0, $t1, $t2
  sw $t0, 80($sp)
  sw $t1, 0($sp)
  sw $t2, 4($sp)
  lw $t0, 80($sp)
  lw $t1, 48($sp)
  blt $t0, $t1, label1
  sw $t0, 80($sp)
  sw $t1, 48($sp)
  j label2
label1:
  lw $t0, 84($sp)
  lw $t1, 56($sp)
  li $t8, 12
  mul $t0, $t1, $t8
  sw $t0, 84($sp)
  sw $t1, 56($sp)
  lw $t0, 88($sp)
  lw $t1, 52($sp)
  lw $t2, 84($sp)
  add $t0, $t1, $t2
  sw $t0, 88($sp)
  sw $t1, 52($sp)
  sw $t2, 84($sp)
  lw $t0, 92($sp)
  lw $t1, 88($sp)
  addi $t0, $t1, 11
  sw $t0, 92($sp)
  sw $t1, 88($sp)
  lw $t0, 52($sp)
  lw $t1, 92($sp)
  move $t0, $t1
  sw $t0, 52($sp)
  sw $t1, 92($sp)
  lw $t0, 96($sp)
  lw $t1, 52($sp)
  move $t0, $t1
  sw $t0, 96($sp)
  sw $t1, 52($sp)
  lw $t0, 48($sp)
  move $a0, $t0
  lw $t1, 100($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal process
  move $t1, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t1, 100($sp)
  lw $t1, 104($sp)
  li $t8, 2
  lw $t2, 0($sp)
  mul $t1, $t8, $t2
  sw $t1, 104($sp)
  sw $t2, 0($sp)
  lw $t1, 108($sp)
  lw $t2, 100($sp)
  lw $t3, 104($sp)
  add $t1, $t2, $t3
  sw $t1, 108($sp)
  sw $t2, 100($sp)
  sw $t3, 104($sp)
  lw $t1, 112($sp)
  lw $t2, 108($sp)
  lw $t3, 48($sp)
  sub $t1, $t2, $t3
  sw $t1, 112($sp)
  sw $t2, 108($sp)
  sw $t3, 48($sp)
  lw $t1, 116($sp)
  lw $t2, 8($sp)
  lw $t3, 20($sp)
  mul $t1, $t2, $t3
  sw $t1, 116($sp)
  sw $t2, 8($sp)
  sw $t3, 20($sp)
  lw $t1, 120($sp)
  lw $t2, 112($sp)
  lw $t3, 116($sp)
  add $t1, $t2, $t3
  sw $t1, 120($sp)
  sw $t2, 112($sp)
  sw $t3, 116($sp)
  lw $t1, 124($sp)
  lw $t2, 120($sp)
  move $t1, $t2
  sw $t1, 124($sp)
  sw $t2, 120($sp)
  lw $t1, 128($sp)
  lw $t2, 124($sp)
  move $t1, $t2
  sw $t1, 128($sp)
  sw $t2, 124($sp)
  lw $t1, 132($sp)
  lw $t2, 56($sp)
  lw $t3, 56($sp)
  add $t1, $t2, $t3
  sw $t1, 132($sp)
  sw $t2, 56($sp)
  sw $t3, 56($sp)
  lw $t1, 56($sp)
  lw $t2, 132($sp)
  move $t1, $t2
  sw $t1, 56($sp)
  sw $t2, 132($sp)
  lw $t1, 136($sp)
  lw $t2, 56($sp)
  move $t1, $t2
  sw $t1, 136($sp)
  sw $t2, 56($sp)
  lw $t1, 140($sp)
  lw $t2, 56($sp)
  lw $t3, 56($sp)
  add $t1, $t2, $t3
  sw $t1, 140($sp)
  sw $t2, 56($sp)
  sw $t3, 56($sp)
  lw $t1, 56($sp)
  lw $t2, 140($sp)
  move $t1, $t2
  sw $t1, 56($sp)
  sw $t2, 140($sp)
  lw $t1, 144($sp)
  lw $t2, 56($sp)
  move $t1, $t2
  sw $t1, 144($sp)
  sw $t2, 56($sp)
  lw $t1, 148($sp)
  lw $t2, 56($sp)
  lw $t3, 56($sp)
  add $t1, $t2, $t3
  sw $t1, 148($sp)
  sw $t2, 56($sp)
  sw $t3, 56($sp)
  lw $t1, 56($sp)
  lw $t2, 148($sp)
  move $t1, $t2
  sw $t1, 56($sp)
  sw $t2, 148($sp)
  lw $t1, 152($sp)
  lw $t2, 56($sp)
  move $t1, $t2
  sw $t1, 152($sp)
  sw $t2, 56($sp)
  lw $t1, 156($sp)
  lw $t2, 56($sp)
  lw $t3, 56($sp)
  add $t1, $t2, $t3
  sw $t1, 156($sp)
  sw $t2, 56($sp)
  sw $t3, 56($sp)
  lw $t1, 56($sp)
  lw $t2, 156($sp)
  move $t1, $t2
  sw $t1, 56($sp)
  sw $t2, 156($sp)
  lw $t1, 160($sp)
  lw $t2, 56($sp)
  move $t1, $t2
  sw $t1, 160($sp)
  sw $t2, 56($sp)
  lw $t1, 164($sp)
  lw $t2, 56($sp)
  lw $t3, 56($sp)
  add $t1, $t2, $t3
  sw $t1, 164($sp)
  sw $t2, 56($sp)
  sw $t3, 56($sp)
  lw $t1, 56($sp)
  lw $t2, 164($sp)
  move $t1, $t2
  sw $t1, 56($sp)
  sw $t2, 164($sp)
  lw $t1, 168($sp)
  lw $t2, 56($sp)
  move $t1, $t2
  sw $t1, 168($sp)
  sw $t2, 56($sp)
  lw $t1, 172($sp)
  lw $t2, 56($sp)
  addi $t1, $t2, 3
  sw $t1, 172($sp)
  sw $t2, 56($sp)
  lw $t1, 176($sp)
  lw $t2, 172($sp)
  move $t1, $t2
  sw $t1, 176($sp)
  sw $t2, 172($sp)
  lw $t1, 180($sp)
  lw $t2, 176($sp)
  move $t1, $t2
  sw $t1, 180($sp)
  sw $t2, 176($sp)
  lw $t1, 184($sp)
  lw $t2, 176($sp)
  addi $t1, $t2, -1
  sw $t1, 184($sp)
  sw $t2, 176($sp)
  lw $t1, 176($sp)
  lw $t2, 184($sp)
  move $t1, $t2
  sw $t1, 176($sp)
  sw $t2, 184($sp)
  lw $t1, 188($sp)
  lw $t2, 176($sp)
  move $t1, $t2
  sw $t1, 188($sp)
  sw $t2, 176($sp)
  lw $t1, 192($sp)
  lw $t2, 176($sp)
  addi $t1, $t2, 3
  sw $t1, 192($sp)
  sw $t2, 176($sp)
  lw $t1, 176($sp)
  lw $t2, 192($sp)
  move $t1, $t2
  sw $t1, 176($sp)
  sw $t2, 192($sp)
  lw $t1, 196($sp)
  lw $t2, 176($sp)
  move $t1, $t2
  sw $t1, 196($sp)
  sw $t2, 176($sp)
  lw $t1, 200($sp)
  lw $t2, 176($sp)
  addi $t1, $t2, -6
  sw $t1, 200($sp)
  sw $t2, 176($sp)
  lw $t1, 176($sp)
  lw $t2, 200($sp)
  move $t1, $t2
  sw $t1, 176($sp)
  sw $t2, 200($sp)
  lw $t1, 204($sp)
  lw $t2, 176($sp)
  move $t1, $t2
  sw $t1, 204($sp)
  sw $t2, 176($sp)
  lw $t1, 0($sp)
  move $a0, $t1
  lw $t2, 208($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal process
  move $t2, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t2, 208($sp)
  lw $t2, 212($sp)
  lw $t3, 0($sp)
  addi $t2, $t3, 3
  sw $t2, 212($sp)
  sw $t3, 0($sp)
  lw $t2, 216($sp)
  lw $t3, 212($sp)
  addi $t2, $t3, -3
  sw $t2, 216($sp)
  sw $t3, 212($sp)
  lw $t2, 216($sp)
  move $a0, $t2
  lw $t3, 220($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal process
  move $t3, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t3, 220($sp)
  lw $t3, 208($sp)
  lw $t4, 220($sp)
  beq $t3, $t4, label3
  sw $t3, 208($sp)
  sw $t4, 220($sp)
  j label4
label3:
  lw $t3, 224($sp)
  lw $t4, 48($sp)
  addi $t3, $t4, -2
  sw $t3, 224($sp)
  sw $t4, 48($sp)
  lw $t3, 228($sp)
  lw $t4, 224($sp)
  addi $t3, $t4, 1
  sw $t3, 228($sp)
  sw $t4, 224($sp)
  lw $t3, 48($sp)
  lw $t4, 228($sp)
  move $t3, $t4
  sw $t3, 48($sp)
  sw $t4, 228($sp)
  lw $t3, 232($sp)
  lw $t4, 48($sp)
  move $t3, $t4
  sw $t3, 232($sp)
  sw $t4, 48($sp)
label4:
  lw $t3, 236($sp)
  lw $t4, 0($sp)
  addi $t3, $t4, 3
  sw $t3, 236($sp)
  sw $t4, 0($sp)
  lw $t3, 0($sp)
  lw $t4, 236($sp)
  move $t3, $t4
  sw $t3, 0($sp)
  sw $t4, 236($sp)
  lw $t3, 240($sp)
  lw $t4, 0($sp)
  move $t3, $t4
  sw $t3, 240($sp)
  sw $t4, 0($sp)
  j label0
label2:
  lw $t3, 244($sp)
  lw $t4, 52($sp)
  addi $t3, $t4, -12
  sw $t3, 244($sp)
  sw $t4, 52($sp)
  lw $t3, 176($sp)
  lw $t4, 244($sp)
  move $t3, $t4
  sw $t3, 176($sp)
  sw $t4, 244($sp)
  lw $t3, 248($sp)
  lw $t4, 176($sp)
  move $t3, $t4
  sw $t3, 248($sp)
  sw $t4, 176($sp)
label5:
  lw $t3, 176($sp)
  lw $t4, 52($sp)
  blt $t3, $t4, label6
  sw $t3, 176($sp)
  sw $t4, 52($sp)
  j label7
label6:
  lw $t3, 252($sp)
  lw $t4, 0($sp)
  addi $t3, $t4, 58
  sw $t3, 252($sp)
  sw $t4, 0($sp)
  lw $t3, 48($sp)
  lw $t4, 252($sp)
  move $t3, $t4
  sw $t3, 48($sp)
  sw $t4, 252($sp)
  lw $t3, 256($sp)
  lw $t4, 48($sp)
  move $t3, $t4
  sw $t3, 256($sp)
  sw $t4, 48($sp)
  lw $t3, 260($sp)
  lw $t4, 52($sp)
  addi $t3, $t4, -12
  sw $t3, 260($sp)
  sw $t4, 52($sp)
  lw $t3, 124($sp)
  lw $t4, 260($sp)
  move $t3, $t4
  sw $t3, 124($sp)
  sw $t4, 260($sp)
  lw $t3, 264($sp)
  lw $t4, 124($sp)
  move $t3, $t4
  sw $t3, 264($sp)
  sw $t4, 124($sp)
  lw $t3, 268($sp)
  lw $t4, 176($sp)
  addi $t3, $t4, 1
  sw $t3, 268($sp)
  sw $t4, 176($sp)
  lw $t3, 176($sp)
  lw $t4, 268($sp)
  move $t3, $t4
  sw $t3, 176($sp)
  sw $t4, 268($sp)
  lw $t3, 272($sp)
  lw $t4, 176($sp)
  move $t3, $t4
  sw $t3, 272($sp)
  sw $t4, 176($sp)
  lw $t3, 124($sp)
  lw $t4, 52($sp)
  move $t3, $t4
  sw $t3, 124($sp)
  sw $t4, 52($sp)
  lw $t3, 276($sp)
  lw $t4, 124($sp)
  move $t3, $t4
  sw $t3, 276($sp)
  sw $t4, 124($sp)
  lw $t3, 280($sp)
  lw $t4, 0($sp)
  lw $t5, 4($sp)
  add $t3, $t4, $t5
  sw $t3, 280($sp)
  sw $t4, 0($sp)
  sw $t5, 4($sp)
  lw $t3, 56($sp)
  lw $t4, 280($sp)
  move $t3, $t4
  sw $t3, 56($sp)
  sw $t4, 280($sp)
  lw $t3, 284($sp)
  lw $t4, 56($sp)
  move $t3, $t4
  sw $t3, 284($sp)
  sw $t4, 56($sp)
  lw $t3, 288($sp)
  lw $t4, 0($sp)
  lw $t5, 4($sp)
  add $t3, $t4, $t5
  sw $t3, 288($sp)
  sw $t4, 0($sp)
  sw $t5, 4($sp)
  lw $t3, 8($sp)
  lw $t4, 288($sp)
  move $t3, $t4
  sw $t3, 8($sp)
  sw $t4, 288($sp)
  lw $t3, 292($sp)
  lw $t4, 8($sp)
  move $t3, $t4
  sw $t3, 292($sp)
  sw $t4, 8($sp)
  j label5
label7:
  lw $t3, 48($sp)
  move $a0, $t3
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t3, 48($sp)
  lw $t3, 296($sp)
  lw $t4, 0($sp)
  lw $t5, 4($sp)
  add $t3, $t4, $t5
  sw $t3, 296($sp)
  sw $t4, 0($sp)
  sw $t5, 4($sp)
  lw $t3, 0($sp)
  lw $t4, 296($sp)
  move $t3, $t4
  sw $t3, 0($sp)
  sw $t4, 296($sp)
  lw $t3, 300($sp)
  lw $t4, 0($sp)
  move $t3, $t4
  sw $t3, 300($sp)
  sw $t4, 0($sp)
  lw $t3, 304($sp)
  lw $t4, 0($sp)
  lw $t5, 4($sp)
  add $t3, $t4, $t5
  sw $t3, 304($sp)
  sw $t4, 0($sp)
  sw $t5, 4($sp)
  lw $t3, 4($sp)
  lw $t4, 304($sp)
  move $t3, $t4
  sw $t3, 4($sp)
  sw $t4, 304($sp)
  lw $t3, 308($sp)
  lw $t4, 4($sp)
  move $t3, $t4
  sw $t3, 308($sp)
  sw $t4, 4($sp)
  lw $t3, 312($sp)
  lw $t4, 0($sp)
  lw $t5, 4($sp)
  add $t3, $t4, $t5
  sw $t3, 312($sp)
  sw $t4, 0($sp)
  sw $t5, 4($sp)
  lw $t3, 8($sp)
  lw $t4, 312($sp)
  move $t3, $t4
  sw $t3, 8($sp)
  sw $t4, 312($sp)
  lw $t3, 316($sp)
  lw $t4, 8($sp)
  move $t3, $t4
  sw $t3, 316($sp)
  sw $t4, 8($sp)
  lw $t3, 320($sp)
  lw $t4, 0($sp)
  lw $t5, 4($sp)
  add $t3, $t4, $t5
  sw $t3, 320($sp)
  sw $t4, 0($sp)
  sw $t5, 4($sp)
  lw $t3, 48($sp)
  lw $t4, 320($sp)
  move $t3, $t4
  sw $t3, 48($sp)
  sw $t4, 320($sp)
  lw $t3, 324($sp)
  lw $t4, 48($sp)
  move $t3, $t4
  sw $t3, 324($sp)
  sw $t4, 48($sp)
  lw $t3, 328($sp)
  lw $t4, 0($sp)
  lw $t5, 4($sp)
  add $t3, $t4, $t5
  sw $t3, 328($sp)
  sw $t4, 0($sp)
  sw $t5, 4($sp)
  lw $t3, 124($sp)
  lw $t4, 328($sp)
  move $t3, $t4
  sw $t3, 124($sp)
  sw $t4, 328($sp)
  lw $t3, 332($sp)
  lw $t4, 124($sp)
  move $t3, $t4
  sw $t3, 332($sp)
  sw $t4, 124($sp)
  lw $t3, 336($sp)
  lw $t4, 8($sp)
  lw $t5, 48($sp)
  add $t3, $t4, $t5
  sw $t3, 336($sp)
  sw $t4, 8($sp)
  sw $t5, 48($sp)
  lw $t3, 340($sp)
  lw $t4, 336($sp)
  lw $t5, 124($sp)
  add $t3, $t4, $t5
  sw $t3, 340($sp)
  sw $t4, 336($sp)
  sw $t5, 124($sp)
  lw $t3, 340($sp)
  move $a0, $t3
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t3, 340($sp)
  li $t8, 0
  addi $sp, $sp, 344
  move $v0, $t8
  jr $ra
