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

compare:
  addi $sp, $sp, -8
  sw $a0, 0($sp)
  sw $a1, 4($sp)
  lw $t0, 4($sp)
  lw $t1, 0($sp)
  bgt $t0, $t1, label0
  sw $t0, 4($sp)
  sw $t1, 0($sp)
  j label1
label0:
  lw $t0, 4($sp)
  addi $sp, $sp, 8
  move $v0, $t0
  jr $ra
  sw $t0, 4($sp)
label1:
  lw $t0, 4($sp)
  lw $t1, 0($sp)
  blt $t0, $t1, label2
  sw $t0, 4($sp)
  sw $t1, 0($sp)
  j label3
label2:
  lw $t0, 0($sp)
  addi $sp, $sp, 8
  move $v0, $t0
  jr $ra
  sw $t0, 0($sp)
label3:
  li $t8, 0
  addi $sp, $sp, 8
  move $v0, $t8
  jr $ra
Add:
  addi $sp, $sp, -12
  sw $a0, 0($sp)
  sw $a1, 4($sp)
  lw $t0, 8($sp)
  lw $t1, 4($sp)
  lw $t2, 0($sp)
  add $t0, $t1, $t2
  sw $t0, 8($sp)
  sw $t1, 4($sp)
  sw $t2, 0($sp)
  lw $t0, 8($sp)
  addi $sp, $sp, 12
  move $v0, $t0
  jr $ra
  sw $t0, 8($sp)
main:
  addi $sp, $sp, -248
  lw $t0, 40($sp)
  addi $t0, $sp, 0
  sw $t0, 40($sp)
  lw $t0, 64($sp)
  addi $t0, $sp, 44
  sw $t0, 64($sp)
  lw $t0, 68($sp)
  li $t0, 0
  sw $t0, 68($sp)
  lw $t0, 72($sp)
  lw $t1, 68($sp)
  move $t0, $t1
  sw $t0, 72($sp)
  sw $t1, 68($sp)
label4:
  lw $t0, 68($sp)
  li $t8, 10
  blt $t0, $t8, label5
  sw $t0, 68($sp)
  j label6
label5:
  lw $t0, 76($sp)
  li $t8, 4
  lw $t1, 68($sp)
  mul $t0, $t8, $t1
  sw $t0, 76($sp)
  sw $t1, 68($sp)
  lw $t0, 80($sp)
  lw $t1, 40($sp)
  lw $t2, 76($sp)
  add $t0, $t1, $t2
  sw $t0, 80($sp)
  sw $t1, 40($sp)
  sw $t2, 76($sp)
  lw $t0, 84($sp)
  lw $t1, 80($sp)
  move $t0, $t1
  sw $t0, 84($sp)
  sw $t1, 80($sp)
  lw $t0, 88($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 88($sp)
  lw $t0, 84($sp)
  lw $t1, 88($sp)
  sw $t1, 0($t0)
  sw $t0, 84($sp)
  sw $t1, 88($sp)
  lw $t0, 92($sp)
  lw $t1, 88($sp)
  move $t0, $t1
  sw $t0, 92($sp)
  sw $t1, 88($sp)
  lw $t0, 96($sp)
  lw $t1, 68($sp)
  addi $t0, $t1, 1
  sw $t0, 96($sp)
  sw $t1, 68($sp)
  lw $t0, 68($sp)
  lw $t1, 96($sp)
  move $t0, $t1
  sw $t0, 68($sp)
  sw $t1, 96($sp)
  lw $t0, 100($sp)
  lw $t1, 68($sp)
  move $t0, $t1
  sw $t0, 100($sp)
  sw $t1, 68($sp)
  j label4
label6:
  lw $t0, 68($sp)
  li $t0, 0
  sw $t0, 68($sp)
  lw $t0, 104($sp)
  lw $t1, 68($sp)
  move $t0, $t1
  sw $t0, 104($sp)
  sw $t1, 68($sp)
  lw $t0, 108($sp)
  li $t0, 0
  sw $t0, 108($sp)
  lw $t0, 112($sp)
  lw $t1, 108($sp)
  move $t0, $t1
  sw $t0, 112($sp)
  sw $t1, 108($sp)
label7:
  lw $t0, 68($sp)
  li $t8, 10
  blt $t0, $t8, label8
  sw $t0, 68($sp)
  j label9
label8:
  lw $t0, 116($sp)
  li $t8, 4
  lw $t1, 108($sp)
  mul $t0, $t8, $t1
  sw $t0, 116($sp)
  sw $t1, 108($sp)
  lw $t0, 120($sp)
  lw $t1, 64($sp)
  lw $t2, 116($sp)
  add $t0, $t1, $t2
  sw $t0, 120($sp)
  sw $t1, 64($sp)
  sw $t2, 116($sp)
  lw $t0, 124($sp)
  lw $t1, 120($sp)
  move $t0, $t1
  sw $t0, 124($sp)
  sw $t1, 120($sp)
  lw $t0, 128($sp)
  lw $t1, 68($sp)
  addi $t0, $t1, 1
  sw $t0, 128($sp)
  sw $t1, 68($sp)
  lw $t0, 132($sp)
  li $t8, 4
  lw $t1, 128($sp)
  mul $t0, $t8, $t1
  sw $t0, 132($sp)
  sw $t1, 128($sp)
  lw $t0, 136($sp)
  lw $t1, 40($sp)
  lw $t2, 132($sp)
  add $t0, $t1, $t2
  sw $t0, 136($sp)
  sw $t1, 40($sp)
  sw $t2, 132($sp)
  lw $t0, 140($sp)
  lw $t1, 136($sp)
  move $t0, $t1
  sw $t0, 140($sp)
  sw $t1, 136($sp)
  lw $t0, 144($sp)
  li $t8, 4
  lw $t1, 68($sp)
  mul $t0, $t8, $t1
  sw $t0, 144($sp)
  sw $t1, 68($sp)
  lw $t0, 148($sp)
  lw $t1, 40($sp)
  lw $t2, 144($sp)
  add $t0, $t1, $t2
  sw $t0, 148($sp)
  sw $t1, 40($sp)
  sw $t2, 144($sp)
  lw $t0, 152($sp)
  lw $t1, 148($sp)
  move $t0, $t1
  sw $t0, 152($sp)
  sw $t1, 148($sp)
  lw $t9, 140($sp)
  lw $t0, 0($t9)
  move $a0, $t0
  lw $t9, 152($sp)
  lw $t1, 0($t9)
  move $a1, $t1
  lw $t2, 156($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal compare
  move $t2, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t2, 156($sp)
  lw $t2, 124($sp)
  lw $t3, 156($sp)
  sw $t3, 0($t2)
  sw $t2, 124($sp)
  sw $t3, 156($sp)
  lw $t2, 160($sp)
  lw $t3, 156($sp)
  move $t2, $t3
  sw $t2, 160($sp)
  sw $t3, 156($sp)
  lw $t2, 164($sp)
  lw $t3, 68($sp)
  addi $t2, $t3, 2
  sw $t2, 164($sp)
  sw $t3, 68($sp)
  lw $t2, 68($sp)
  lw $t3, 164($sp)
  move $t2, $t3
  sw $t2, 68($sp)
  sw $t3, 164($sp)
  lw $t2, 168($sp)
  lw $t3, 68($sp)
  move $t2, $t3
  sw $t2, 168($sp)
  sw $t3, 68($sp)
  lw $t2, 172($sp)
  lw $t3, 108($sp)
  addi $t2, $t3, 1
  sw $t2, 172($sp)
  sw $t3, 108($sp)
  lw $t2, 108($sp)
  lw $t3, 172($sp)
  move $t2, $t3
  sw $t2, 108($sp)
  sw $t3, 172($sp)
  lw $t2, 176($sp)
  lw $t3, 108($sp)
  move $t2, $t3
  sw $t2, 176($sp)
  sw $t3, 108($sp)
  j label7
label9:
  lw $t2, 68($sp)
  li $t2, 0
  sw $t2, 68($sp)
  lw $t2, 180($sp)
  lw $t3, 68($sp)
  move $t2, $t3
  sw $t2, 180($sp)
  sw $t3, 68($sp)
label10:
  lw $t2, 68($sp)
  li $t8, 5
  blt $t2, $t8, label11
  sw $t2, 68($sp)
  j label12
label11:
  lw $t2, 184($sp)
  li $t8, 4
  lw $t3, 68($sp)
  mul $t2, $t8, $t3
  sw $t2, 184($sp)
  sw $t3, 68($sp)
  lw $t2, 188($sp)
  lw $t3, 64($sp)
  lw $t4, 184($sp)
  add $t2, $t3, $t4
  sw $t2, 188($sp)
  sw $t3, 64($sp)
  sw $t4, 184($sp)
  lw $t2, 192($sp)
  lw $t3, 188($sp)
  move $t2, $t3
  sw $t2, 192($sp)
  sw $t3, 188($sp)
  lw $t2, 196($sp)
  li $t8, 4
  lw $t3, 68($sp)
  mul $t2, $t8, $t3
  sw $t2, 196($sp)
  sw $t3, 68($sp)
  lw $t2, 200($sp)
  lw $t3, 40($sp)
  lw $t4, 196($sp)
  add $t2, $t3, $t4
  sw $t2, 200($sp)
  sw $t3, 40($sp)
  sw $t4, 196($sp)
  lw $t2, 204($sp)
  lw $t3, 200($sp)
  move $t2, $t3
  sw $t2, 204($sp)
  sw $t3, 200($sp)
  lw $t2, 208($sp)
  li $t8, 4
  lw $t3, 68($sp)
  mul $t2, $t8, $t3
  sw $t2, 208($sp)
  sw $t3, 68($sp)
  lw $t2, 212($sp)
  lw $t3, 64($sp)
  lw $t4, 208($sp)
  add $t2, $t3, $t4
  sw $t2, 212($sp)
  sw $t3, 64($sp)
  sw $t4, 208($sp)
  lw $t2, 216($sp)
  lw $t3, 212($sp)
  move $t2, $t3
  sw $t2, 216($sp)
  sw $t3, 212($sp)
  lw $t9, 204($sp)
  lw $t2, 0($t9)
  move $a0, $t2
  lw $t9, 216($sp)
  lw $t3, 0($t9)
  move $a1, $t3
  lw $t4, 220($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal Add
  move $t4, $v0
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t4, 220($sp)
  lw $t4, 192($sp)
  lw $t5, 220($sp)
  sw $t5, 0($t4)
  sw $t4, 192($sp)
  sw $t5, 220($sp)
  lw $t4, 224($sp)
  lw $t5, 220($sp)
  move $t4, $t5
  sw $t4, 224($sp)
  sw $t5, 220($sp)
  lw $t4, 228($sp)
  li $t8, 4
  lw $t5, 68($sp)
  mul $t4, $t8, $t5
  sw $t4, 228($sp)
  sw $t5, 68($sp)
  lw $t4, 232($sp)
  lw $t5, 64($sp)
  lw $t6, 228($sp)
  add $t4, $t5, $t6
  sw $t4, 232($sp)
  sw $t5, 64($sp)
  sw $t6, 228($sp)
  lw $t4, 236($sp)
  lw $t5, 232($sp)
  move $t4, $t5
  sw $t4, 236($sp)
  sw $t5, 232($sp)
  lw $t9, 236($sp)
  lw $t4, 0($t9)
  move $a0, $t4
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  lw $t4, 240($sp)
  lw $t5, 68($sp)
  addi $t4, $t5, 1
  sw $t4, 240($sp)
  sw $t5, 68($sp)
  lw $t4, 68($sp)
  lw $t5, 240($sp)
  move $t4, $t5
  sw $t4, 68($sp)
  sw $t5, 240($sp)
  lw $t4, 244($sp)
  lw $t5, 68($sp)
  move $t4, $t5
  sw $t4, 244($sp)
  sw $t5, 68($sp)
  j label10
label12:
  li $t8, 0
  addi $sp, $sp, 248
  move $v0, $t8
  jr $ra
