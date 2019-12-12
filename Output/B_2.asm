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
  addi $sp, $sp, -300
  lw $t0, 0($sp)
  li $t0, 10
  sw $t0, 0($sp)
  lw $t0, 44($sp)
  addi $t0, $sp, 4
  sw $t0, 44($sp)
  lw $t0, 48($sp)
  li $t0, 0
  sw $t0, 48($sp)
  lw $t0, 52($sp)
  li $t0, 0
  sw $t0, 52($sp)
label0:
  lw $t0, 48($sp)
  li $t8, 10
  blt $t0, $t8, label1
  sw $t0, 48($sp)
  j label2
label1:
  lw $t0, 56($sp)
  li $t8, 4
  lw $t1, 48($sp)
  mul $t0, $t8, $t1
  sw $t0, 56($sp)
  sw $t1, 48($sp)
  lw $t0, 60($sp)
  lw $t1, 44($sp)
  lw $t2, 56($sp)
  add $t0, $t1, $t2
  sw $t0, 60($sp)
  sw $t1, 44($sp)
  sw $t2, 56($sp)
  lw $t0, 64($sp)
  lw $t1, 60($sp)
  move $t0, $t1
  sw $t0, 64($sp)
  sw $t1, 60($sp)
  lw $t0, 68($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 68($sp)
  lw $t0, 64($sp)
  lw $t1, 68($sp)
  sw $t1, 0($t0)
  sw $t0, 64($sp)
  sw $t1, 68($sp)
  lw $t0, 72($sp)
  lw $t1, 68($sp)
  move $t0, $t1
  sw $t0, 72($sp)
  sw $t1, 68($sp)
  lw $t0, 76($sp)
  lw $t1, 48($sp)
  addi $t0, $t1, 1
  sw $t0, 76($sp)
  sw $t1, 48($sp)
  lw $t0, 48($sp)
  lw $t1, 76($sp)
  move $t0, $t1
  sw $t0, 48($sp)
  sw $t1, 76($sp)
  lw $t0, 80($sp)
  lw $t1, 48($sp)
  move $t0, $t1
  sw $t0, 80($sp)
  sw $t1, 48($sp)
  j label0
label2:
  lw $t0, 84($sp)
  lw $t1, 0($sp)
  li $t8, 2
  div $t1, $t8
  mflo $t0
  sw $t0, 84($sp)
  sw $t1, 0($sp)
  lw $t0, 88($sp)
  lw $t1, 84($sp)
  move $t0, $t1
  sw $t0, 88($sp)
  sw $t1, 84($sp)
  lw $t0, 92($sp)
  lw $t1, 88($sp)
  move $t0, $t1
  sw $t0, 92($sp)
  sw $t1, 88($sp)
label3:
  lw $t0, 88($sp)
  li $t8, 0
  bge $t0, $t8, label4
  sw $t0, 88($sp)
  j label5
label4:
  lw $t0, 52($sp)
  li $t0, 0
  sw $t0, 52($sp)
  lw $t0, 96($sp)
  lw $t1, 52($sp)
  move $t0, $t1
  sw $t0, 96($sp)
  sw $t1, 52($sp)
  lw $t0, 48($sp)
  lw $t1, 88($sp)
  move $t0, $t1
  sw $t0, 48($sp)
  sw $t1, 88($sp)
  lw $t0, 100($sp)
  lw $t1, 48($sp)
  move $t0, $t1
  sw $t0, 100($sp)
  sw $t1, 48($sp)
label6:
  lw $t0, 52($sp)
  li $t8, 0
  beq $t0, $t8, label7
  sw $t0, 52($sp)
  j label8
label7:
  lw $t0, 52($sp)
  li $t0, 1
  sw $t0, 52($sp)
  lw $t0, 104($sp)
  lw $t1, 52($sp)
  move $t0, $t1
  sw $t0, 104($sp)
  sw $t1, 52($sp)
  lw $t0, 108($sp)
  lw $t1, 48($sp)
  li $t8, 2
  mul $t0, $t1, $t8
  sw $t0, 108($sp)
  sw $t1, 48($sp)
  lw $t0, 112($sp)
  lw $t1, 108($sp)
  addi $t0, $t1, 1
  sw $t0, 112($sp)
  sw $t1, 108($sp)
  lw $t0, 116($sp)
  lw $t1, 112($sp)
  move $t0, $t1
  sw $t0, 116($sp)
  sw $t1, 112($sp)
  lw $t0, 120($sp)
  lw $t1, 116($sp)
  move $t0, $t1
  sw $t0, 120($sp)
  sw $t1, 116($sp)
  lw $t0, 124($sp)
  lw $t1, 48($sp)
  li $t8, 2
  mul $t0, $t1, $t8
  sw $t0, 124($sp)
  sw $t1, 48($sp)
  lw $t0, 128($sp)
  lw $t1, 124($sp)
  addi $t0, $t1, 2
  sw $t0, 128($sp)
  sw $t1, 124($sp)
  lw $t0, 132($sp)
  lw $t1, 128($sp)
  move $t0, $t1
  sw $t0, 132($sp)
  sw $t1, 128($sp)
  lw $t0, 136($sp)
  lw $t1, 132($sp)
  move $t0, $t1
  sw $t0, 136($sp)
  sw $t1, 132($sp)
  lw $t0, 116($sp)
  lw $t1, 0($sp)
  blt $t0, $t1, label9
  sw $t0, 116($sp)
  sw $t1, 0($sp)
  j label10
label9:
  lw $t0, 140($sp)
  li $t8, 4
  lw $t1, 116($sp)
  mul $t0, $t8, $t1
  sw $t0, 140($sp)
  sw $t1, 116($sp)
  lw $t0, 144($sp)
  lw $t1, 44($sp)
  lw $t2, 140($sp)
  add $t0, $t1, $t2
  sw $t0, 144($sp)
  sw $t1, 44($sp)
  sw $t2, 140($sp)
  lw $t0, 148($sp)
  lw $t1, 144($sp)
  move $t0, $t1
  sw $t0, 148($sp)
  sw $t1, 144($sp)
  lw $t0, 152($sp)
  lw $t1, 148($sp)
  lw $t0, 0($t1)
  sw $t0, 152($sp)
  sw $t1, 148($sp)
  lw $t0, 156($sp)
  lw $t1, 152($sp)
  move $t0, $t1
  sw $t0, 156($sp)
  sw $t1, 152($sp)
  lw $t0, 132($sp)
  lw $t1, 0($sp)
  blt $t0, $t1, label13
  sw $t0, 132($sp)
  sw $t1, 0($sp)
  j label12
label13:
  lw $t0, 160($sp)
  li $t8, 4
  lw $t1, 132($sp)
  mul $t0, $t8, $t1
  sw $t0, 160($sp)
  sw $t1, 132($sp)
  lw $t0, 164($sp)
  lw $t1, 44($sp)
  lw $t2, 160($sp)
  add $t0, $t1, $t2
  sw $t0, 164($sp)
  sw $t1, 44($sp)
  sw $t2, 160($sp)
  lw $t0, 168($sp)
  lw $t1, 164($sp)
  move $t0, $t1
  sw $t0, 168($sp)
  sw $t1, 164($sp)
  lw $t0, 172($sp)
  li $t8, 4
  lw $t1, 116($sp)
  mul $t0, $t8, $t1
  sw $t0, 172($sp)
  sw $t1, 116($sp)
  lw $t0, 176($sp)
  lw $t1, 44($sp)
  lw $t2, 172($sp)
  add $t0, $t1, $t2
  sw $t0, 176($sp)
  sw $t1, 44($sp)
  sw $t2, 172($sp)
  lw $t0, 180($sp)
  lw $t1, 176($sp)
  move $t0, $t1
  sw $t0, 180($sp)
  sw $t1, 176($sp)
  lw $t9, 168($sp)
  lw $t0, 0($t9)
  lw $t9, 180($sp)
  lw $t1, 0($t9)
  blt $t0, $t1, label11
  j label12
label11:
  lw $t0, 184($sp)
  li $t8, 4
  lw $t1, 132($sp)
  mul $t0, $t8, $t1
  sw $t0, 184($sp)
  sw $t1, 132($sp)
  lw $t0, 188($sp)
  lw $t1, 44($sp)
  lw $t2, 184($sp)
  add $t0, $t1, $t2
  sw $t0, 188($sp)
  sw $t1, 44($sp)
  sw $t2, 184($sp)
  lw $t0, 192($sp)
  lw $t1, 188($sp)
  move $t0, $t1
  sw $t0, 192($sp)
  sw $t1, 188($sp)
  lw $t0, 152($sp)
  lw $t1, 192($sp)
  lw $t0, 0($t1)
  sw $t0, 152($sp)
  sw $t1, 192($sp)
  lw $t0, 196($sp)
  lw $t1, 152($sp)
  move $t0, $t1
  sw $t0, 196($sp)
  sw $t1, 152($sp)
  lw $t0, 116($sp)
  lw $t1, 132($sp)
  move $t0, $t1
  sw $t0, 116($sp)
  sw $t1, 132($sp)
  lw $t0, 200($sp)
  lw $t1, 116($sp)
  move $t0, $t1
  sw $t0, 200($sp)
  sw $t1, 116($sp)
label12:
  lw $t0, 204($sp)
  li $t8, 4
  lw $t1, 48($sp)
  mul $t0, $t8, $t1
  sw $t0, 204($sp)
  sw $t1, 48($sp)
  lw $t0, 208($sp)
  lw $t1, 44($sp)
  lw $t2, 204($sp)
  add $t0, $t1, $t2
  sw $t0, 208($sp)
  sw $t1, 44($sp)
  sw $t2, 204($sp)
  lw $t0, 212($sp)
  lw $t1, 208($sp)
  move $t0, $t1
  sw $t0, 212($sp)
  sw $t1, 208($sp)
  lw $t9, 212($sp)
  lw $t0, 0($t9)
  lw $t1, 152($sp)
  bgt $t0, $t1, label14
  sw $t1, 152($sp)
  j label15
label14:
  lw $t0, 52($sp)
  li $t0, 0
  sw $t0, 52($sp)
  lw $t0, 216($sp)
  lw $t1, 52($sp)
  move $t0, $t1
  sw $t0, 216($sp)
  sw $t1, 52($sp)
  lw $t0, 220($sp)
  li $t8, 4
  lw $t1, 116($sp)
  mul $t0, $t8, $t1
  sw $t0, 220($sp)
  sw $t1, 116($sp)
  lw $t0, 224($sp)
  lw $t1, 44($sp)
  lw $t2, 220($sp)
  add $t0, $t1, $t2
  sw $t0, 224($sp)
  sw $t1, 44($sp)
  sw $t2, 220($sp)
  lw $t0, 228($sp)
  lw $t1, 224($sp)
  move $t0, $t1
  sw $t0, 228($sp)
  sw $t1, 224($sp)
  lw $t0, 232($sp)
  li $t8, 4
  lw $t1, 48($sp)
  mul $t0, $t8, $t1
  sw $t0, 232($sp)
  sw $t1, 48($sp)
  lw $t0, 236($sp)
  lw $t1, 44($sp)
  lw $t2, 232($sp)
  add $t0, $t1, $t2
  sw $t0, 236($sp)
  sw $t1, 44($sp)
  sw $t2, 232($sp)
  lw $t0, 240($sp)
  lw $t1, 236($sp)
  move $t0, $t1
  sw $t0, 240($sp)
  sw $t1, 236($sp)
  lw $t0, 228($sp)
  lw $t9, 240($sp)
  lw $t1, 0($t9)
  sw $t1, 0($t0)
  sw $t0, 228($sp)
  lw $t0, 244($sp)
  lw $t1, 240($sp)
  lw $t0, 0($t1)
  sw $t0, 244($sp)
  sw $t1, 240($sp)
  lw $t0, 248($sp)
  li $t8, 4
  lw $t1, 48($sp)
  mul $t0, $t8, $t1
  sw $t0, 248($sp)
  sw $t1, 48($sp)
  lw $t0, 252($sp)
  lw $t1, 44($sp)
  lw $t2, 248($sp)
  add $t0, $t1, $t2
  sw $t0, 252($sp)
  sw $t1, 44($sp)
  sw $t2, 248($sp)
  lw $t0, 256($sp)
  lw $t1, 252($sp)
  move $t0, $t1
  sw $t0, 256($sp)
  sw $t1, 252($sp)
  lw $t0, 256($sp)
  lw $t1, 152($sp)
  sw $t1, 0($t0)
  sw $t0, 256($sp)
  sw $t1, 152($sp)
  lw $t0, 260($sp)
  lw $t1, 152($sp)
  move $t0, $t1
  sw $t0, 260($sp)
  sw $t1, 152($sp)
  lw $t0, 48($sp)
  lw $t1, 116($sp)
  move $t0, $t1
  sw $t0, 48($sp)
  sw $t1, 116($sp)
  lw $t0, 264($sp)
  lw $t1, 48($sp)
  move $t0, $t1
  sw $t0, 264($sp)
  sw $t1, 48($sp)
label15:
label10:
  j label6
label8:
  lw $t0, 268($sp)
  lw $t1, 88($sp)
  addi $t0, $t1, -1
  sw $t0, 268($sp)
  sw $t1, 88($sp)
  lw $t0, 88($sp)
  lw $t1, 268($sp)
  move $t0, $t1
  sw $t0, 88($sp)
  sw $t1, 268($sp)
  lw $t0, 272($sp)
  lw $t1, 88($sp)
  move $t0, $t1
  sw $t0, 272($sp)
  sw $t1, 88($sp)
  j label3
label5:
  lw $t0, 48($sp)
  li $t0, 0
  sw $t0, 48($sp)
  lw $t0, 276($sp)
  lw $t1, 48($sp)
  move $t0, $t1
  sw $t0, 276($sp)
  sw $t1, 48($sp)
label16:
  lw $t0, 48($sp)
  lw $t1, 0($sp)
  blt $t0, $t1, label17
  sw $t0, 48($sp)
  sw $t1, 0($sp)
  j label18
label17:
  lw $t0, 280($sp)
  li $t8, 4
  lw $t1, 48($sp)
  mul $t0, $t8, $t1
  sw $t0, 280($sp)
  sw $t1, 48($sp)
  lw $t0, 284($sp)
  lw $t1, 44($sp)
  lw $t2, 280($sp)
  add $t0, $t1, $t2
  sw $t0, 284($sp)
  sw $t1, 44($sp)
  sw $t2, 280($sp)
  lw $t0, 288($sp)
  lw $t1, 284($sp)
  move $t0, $t1
  sw $t0, 288($sp)
  sw $t1, 284($sp)
  lw $t9, 288($sp)
  lw $t0, 0($t9)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  lw $t0, 292($sp)
  lw $t1, 48($sp)
  addi $t0, $t1, 1
  sw $t0, 292($sp)
  sw $t1, 48($sp)
  lw $t0, 48($sp)
  lw $t1, 292($sp)
  move $t0, $t1
  sw $t0, 48($sp)
  sw $t1, 292($sp)
  lw $t0, 296($sp)
  lw $t1, 48($sp)
  move $t0, $t1
  sw $t0, 296($sp)
  sw $t1, 48($sp)
  j label16
label18:
  li $t8, 0
  addi $sp, $sp, 300
  move $v0, $t8
  jr $ra
