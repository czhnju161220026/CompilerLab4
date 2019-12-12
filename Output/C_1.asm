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
  addi $sp, $sp, -592
  lw $t0, 0($sp)
  li $t0, 10
  sw $t0, 0($sp)
  lw $t0, 44($sp)
  addi $t0, $sp, 4
  sw $t0, 44($sp)
  lw $t0, 88($sp)
  addi $t0, $sp, 48
  sw $t0, 88($sp)
  lw $t0, 92($sp)
  li $t0, 0
  sw $t0, 92($sp)
  lw $t0, 96($sp)
  li $t0, 0
  sw $t0, 96($sp)
label0:
  lw $t0, 92($sp)
  li $t8, 10
  blt $t0, $t8, label1
  sw $t0, 92($sp)
  j label2
label1:
  lw $t0, 100($sp)
  li $t8, 4
  lw $t1, 92($sp)
  mul $t0, $t8, $t1
  sw $t0, 100($sp)
  sw $t1, 92($sp)
  lw $t0, 104($sp)
  lw $t1, 44($sp)
  lw $t2, 100($sp)
  add $t0, $t1, $t2
  sw $t0, 104($sp)
  sw $t1, 44($sp)
  sw $t2, 100($sp)
  lw $t0, 108($sp)
  lw $t1, 104($sp)
  move $t0, $t1
  sw $t0, 108($sp)
  sw $t1, 104($sp)
  lw $t0, 112($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 112($sp)
  lw $t0, 108($sp)
  lw $t1, 112($sp)
  sw $t1, 0($t0)
  sw $t0, 108($sp)
  sw $t1, 112($sp)
  lw $t0, 116($sp)
  lw $t1, 112($sp)
  move $t0, $t1
  sw $t0, 116($sp)
  sw $t1, 112($sp)
  lw $t0, 120($sp)
  lw $t1, 92($sp)
  addi $t0, $t1, 1
  sw $t0, 120($sp)
  sw $t1, 92($sp)
  lw $t0, 92($sp)
  lw $t1, 120($sp)
  move $t0, $t1
  sw $t0, 92($sp)
  sw $t1, 120($sp)
  lw $t0, 124($sp)
  lw $t1, 92($sp)
  move $t0, $t1
  sw $t0, 124($sp)
  sw $t1, 92($sp)
  j label0
label2:
  lw $t0, 128($sp)
  lw $t1, 0($sp)
  li $t8, 2
  div $t1, $t8
  mflo $t0
  sw $t0, 128($sp)
  sw $t1, 0($sp)
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
label3:
  lw $t0, 132($sp)
  li $t8, 0
  bge $t0, $t8, label4
  sw $t0, 132($sp)
  j label5
label4:
  lw $t0, 96($sp)
  li $t0, 0
  sw $t0, 96($sp)
  lw $t0, 140($sp)
  lw $t1, 96($sp)
  move $t0, $t1
  sw $t0, 140($sp)
  sw $t1, 96($sp)
  lw $t0, 92($sp)
  lw $t1, 132($sp)
  move $t0, $t1
  sw $t0, 92($sp)
  sw $t1, 132($sp)
  lw $t0, 144($sp)
  lw $t1, 92($sp)
  move $t0, $t1
  sw $t0, 144($sp)
  sw $t1, 92($sp)
label6:
  lw $t0, 96($sp)
  li $t8, 0
  beq $t0, $t8, label7
  sw $t0, 96($sp)
  j label8
label7:
  lw $t0, 96($sp)
  li $t0, 1
  sw $t0, 96($sp)
  lw $t0, 148($sp)
  lw $t1, 96($sp)
  move $t0, $t1
  sw $t0, 148($sp)
  sw $t1, 96($sp)
  lw $t0, 152($sp)
  lw $t1, 92($sp)
  li $t8, 2
  mul $t0, $t1, $t8
  sw $t0, 152($sp)
  sw $t1, 92($sp)
  lw $t0, 156($sp)
  lw $t1, 152($sp)
  addi $t0, $t1, 1
  sw $t0, 156($sp)
  sw $t1, 152($sp)
  lw $t0, 160($sp)
  lw $t1, 156($sp)
  move $t0, $t1
  sw $t0, 160($sp)
  sw $t1, 156($sp)
  lw $t0, 164($sp)
  lw $t1, 160($sp)
  move $t0, $t1
  sw $t0, 164($sp)
  sw $t1, 160($sp)
  lw $t0, 168($sp)
  lw $t1, 92($sp)
  li $t8, 2
  mul $t0, $t1, $t8
  sw $t0, 168($sp)
  sw $t1, 92($sp)
  lw $t0, 172($sp)
  lw $t1, 168($sp)
  addi $t0, $t1, 2
  sw $t0, 172($sp)
  sw $t1, 168($sp)
  lw $t0, 176($sp)
  lw $t1, 172($sp)
  move $t0, $t1
  sw $t0, 176($sp)
  sw $t1, 172($sp)
  lw $t0, 180($sp)
  lw $t1, 176($sp)
  move $t0, $t1
  sw $t0, 180($sp)
  sw $t1, 176($sp)
  lw $t0, 160($sp)
  lw $t1, 0($sp)
  blt $t0, $t1, label9
  sw $t0, 160($sp)
  sw $t1, 0($sp)
  j label10
label9:
  lw $t0, 184($sp)
  li $t8, 4
  lw $t1, 160($sp)
  mul $t0, $t8, $t1
  sw $t0, 184($sp)
  sw $t1, 160($sp)
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
  lw $t0, 196($sp)
  lw $t1, 192($sp)
  lw $t0, 0($t1)
  sw $t0, 196($sp)
  sw $t1, 192($sp)
  lw $t0, 200($sp)
  lw $t1, 196($sp)
  move $t0, $t1
  sw $t0, 200($sp)
  sw $t1, 196($sp)
  lw $t0, 176($sp)
  lw $t1, 0($sp)
  blt $t0, $t1, label13
  sw $t0, 176($sp)
  sw $t1, 0($sp)
  j label12
label13:
  lw $t0, 204($sp)
  li $t8, 4
  lw $t1, 176($sp)
  mul $t0, $t8, $t1
  sw $t0, 204($sp)
  sw $t1, 176($sp)
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
  lw $t0, 216($sp)
  li $t8, 4
  lw $t1, 160($sp)
  mul $t0, $t8, $t1
  sw $t0, 216($sp)
  sw $t1, 160($sp)
  lw $t0, 220($sp)
  lw $t1, 44($sp)
  lw $t2, 216($sp)
  add $t0, $t1, $t2
  sw $t0, 220($sp)
  sw $t1, 44($sp)
  sw $t2, 216($sp)
  lw $t0, 224($sp)
  lw $t1, 220($sp)
  move $t0, $t1
  sw $t0, 224($sp)
  sw $t1, 220($sp)
  lw $t9, 212($sp)
  lw $t0, 0($t9)
  lw $t9, 224($sp)
  lw $t1, 0($t9)
  blt $t0, $t1, label11
  j label12
label11:
  lw $t0, 228($sp)
  li $t8, 4
  lw $t1, 176($sp)
  mul $t0, $t8, $t1
  sw $t0, 228($sp)
  sw $t1, 176($sp)
  lw $t0, 232($sp)
  lw $t1, 44($sp)
  lw $t2, 228($sp)
  add $t0, $t1, $t2
  sw $t0, 232($sp)
  sw $t1, 44($sp)
  sw $t2, 228($sp)
  lw $t0, 236($sp)
  lw $t1, 232($sp)
  move $t0, $t1
  sw $t0, 236($sp)
  sw $t1, 232($sp)
  lw $t0, 196($sp)
  lw $t1, 236($sp)
  lw $t0, 0($t1)
  sw $t0, 196($sp)
  sw $t1, 236($sp)
  lw $t0, 240($sp)
  lw $t1, 196($sp)
  move $t0, $t1
  sw $t0, 240($sp)
  sw $t1, 196($sp)
  lw $t0, 160($sp)
  lw $t1, 176($sp)
  move $t0, $t1
  sw $t0, 160($sp)
  sw $t1, 176($sp)
  lw $t0, 244($sp)
  lw $t1, 160($sp)
  move $t0, $t1
  sw $t0, 244($sp)
  sw $t1, 160($sp)
label12:
  lw $t0, 248($sp)
  li $t8, 4
  lw $t1, 92($sp)
  mul $t0, $t8, $t1
  sw $t0, 248($sp)
  sw $t1, 92($sp)
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
  lw $t9, 256($sp)
  lw $t0, 0($t9)
  lw $t1, 196($sp)
  bgt $t0, $t1, label14
  sw $t1, 196($sp)
  j label15
label14:
  lw $t0, 96($sp)
  li $t0, 0
  sw $t0, 96($sp)
  lw $t0, 260($sp)
  lw $t1, 96($sp)
  move $t0, $t1
  sw $t0, 260($sp)
  sw $t1, 96($sp)
  lw $t0, 264($sp)
  li $t8, 4
  lw $t1, 160($sp)
  mul $t0, $t8, $t1
  sw $t0, 264($sp)
  sw $t1, 160($sp)
  lw $t0, 268($sp)
  lw $t1, 44($sp)
  lw $t2, 264($sp)
  add $t0, $t1, $t2
  sw $t0, 268($sp)
  sw $t1, 44($sp)
  sw $t2, 264($sp)
  lw $t0, 272($sp)
  lw $t1, 268($sp)
  move $t0, $t1
  sw $t0, 272($sp)
  sw $t1, 268($sp)
  lw $t0, 276($sp)
  li $t8, 4
  lw $t1, 92($sp)
  mul $t0, $t8, $t1
  sw $t0, 276($sp)
  sw $t1, 92($sp)
  lw $t0, 280($sp)
  lw $t1, 44($sp)
  lw $t2, 276($sp)
  add $t0, $t1, $t2
  sw $t0, 280($sp)
  sw $t1, 44($sp)
  sw $t2, 276($sp)
  lw $t0, 284($sp)
  lw $t1, 280($sp)
  move $t0, $t1
  sw $t0, 284($sp)
  sw $t1, 280($sp)
  lw $t0, 272($sp)
  lw $t9, 284($sp)
  lw $t1, 0($t9)
  sw $t1, 0($t0)
  sw $t0, 272($sp)
  lw $t0, 288($sp)
  lw $t1, 284($sp)
  lw $t0, 0($t1)
  sw $t0, 288($sp)
  sw $t1, 284($sp)
  lw $t0, 292($sp)
  li $t8, 4
  lw $t1, 92($sp)
  mul $t0, $t8, $t1
  sw $t0, 292($sp)
  sw $t1, 92($sp)
  lw $t0, 296($sp)
  lw $t1, 44($sp)
  lw $t2, 292($sp)
  add $t0, $t1, $t2
  sw $t0, 296($sp)
  sw $t1, 44($sp)
  sw $t2, 292($sp)
  lw $t0, 300($sp)
  lw $t1, 296($sp)
  move $t0, $t1
  sw $t0, 300($sp)
  sw $t1, 296($sp)
  lw $t0, 300($sp)
  lw $t1, 196($sp)
  sw $t1, 0($t0)
  sw $t0, 300($sp)
  sw $t1, 196($sp)
  lw $t0, 304($sp)
  lw $t1, 196($sp)
  move $t0, $t1
  sw $t0, 304($sp)
  sw $t1, 196($sp)
  lw $t0, 92($sp)
  lw $t1, 160($sp)
  move $t0, $t1
  sw $t0, 92($sp)
  sw $t1, 160($sp)
  lw $t0, 308($sp)
  lw $t1, 92($sp)
  move $t0, $t1
  sw $t0, 308($sp)
  sw $t1, 92($sp)
label15:
label10:
  j label6
label8:
  lw $t0, 312($sp)
  lw $t1, 132($sp)
  addi $t0, $t1, -1
  sw $t0, 312($sp)
  sw $t1, 132($sp)
  lw $t0, 132($sp)
  lw $t1, 312($sp)
  move $t0, $t1
  sw $t0, 132($sp)
  sw $t1, 312($sp)
  lw $t0, 316($sp)
  lw $t1, 132($sp)
  move $t0, $t1
  sw $t0, 316($sp)
  sw $t1, 132($sp)
  j label3
label5:
  lw $t0, 132($sp)
  li $t0, 10
  sw $t0, 132($sp)
  lw $t0, 320($sp)
  lw $t1, 132($sp)
  move $t0, $t1
  sw $t0, 320($sp)
  sw $t1, 132($sp)
  lw $t0, 92($sp)
  li $t0, 0
  sw $t0, 92($sp)
  lw $t0, 324($sp)
  lw $t1, 92($sp)
  move $t0, $t1
  sw $t0, 324($sp)
  sw $t1, 92($sp)
label16:
  lw $t0, 92($sp)
  lw $t1, 0($sp)
  blt $t0, $t1, label17
  sw $t0, 92($sp)
  sw $t1, 0($sp)
  j label18
label17:
  lw $t0, 328($sp)
  li $t8, 4
  lw $t1, 92($sp)
  mul $t0, $t8, $t1
  sw $t0, 328($sp)
  sw $t1, 92($sp)
  lw $t0, 332($sp)
  lw $t1, 88($sp)
  lw $t2, 328($sp)
  add $t0, $t1, $t2
  sw $t0, 332($sp)
  sw $t1, 88($sp)
  sw $t2, 328($sp)
  lw $t0, 336($sp)
  lw $t1, 332($sp)
  move $t0, $t1
  sw $t0, 336($sp)
  sw $t1, 332($sp)
  lw $t0, 340($sp)
  li $t8, 4
  li $t8, 0
  mul $t0, $t8, $t8
  sw $t0, 340($sp)
  lw $t0, 344($sp)
  lw $t1, 44($sp)
  lw $t2, 340($sp)
  add $t0, $t1, $t2
  sw $t0, 344($sp)
  sw $t1, 44($sp)
  sw $t2, 340($sp)
  lw $t0, 348($sp)
  lw $t1, 344($sp)
  move $t0, $t1
  sw $t0, 348($sp)
  sw $t1, 344($sp)
  lw $t0, 336($sp)
  lw $t9, 348($sp)
  lw $t1, 0($t9)
  sw $t1, 0($t0)
  sw $t0, 336($sp)
  lw $t0, 352($sp)
  lw $t1, 348($sp)
  lw $t0, 0($t1)
  sw $t0, 352($sp)
  sw $t1, 348($sp)
  lw $t0, 356($sp)
  lw $t1, 92($sp)
  addi $t0, $t1, 1
  sw $t0, 356($sp)
  sw $t1, 92($sp)
  lw $t0, 92($sp)
  lw $t1, 356($sp)
  move $t0, $t1
  sw $t0, 92($sp)
  sw $t1, 356($sp)
  lw $t0, 360($sp)
  lw $t1, 92($sp)
  move $t0, $t1
  sw $t0, 360($sp)
  sw $t1, 92($sp)
  lw $t0, 364($sp)
  li $t8, 4
  li $t8, 0
  mul $t0, $t8, $t8
  sw $t0, 364($sp)
  lw $t0, 368($sp)
  lw $t1, 44($sp)
  lw $t2, 364($sp)
  add $t0, $t1, $t2
  sw $t0, 368($sp)
  sw $t1, 44($sp)
  sw $t2, 364($sp)
  lw $t0, 372($sp)
  lw $t1, 368($sp)
  move $t0, $t1
  sw $t0, 372($sp)
  sw $t1, 368($sp)
  lw $t0, 376($sp)
  lw $t1, 132($sp)
  addi $t0, $t1, -1
  sw $t0, 376($sp)
  sw $t1, 132($sp)
  lw $t0, 380($sp)
  li $t8, 4
  lw $t1, 376($sp)
  mul $t0, $t8, $t1
  sw $t0, 380($sp)
  sw $t1, 376($sp)
  lw $t0, 384($sp)
  lw $t1, 44($sp)
  lw $t2, 380($sp)
  add $t0, $t1, $t2
  sw $t0, 384($sp)
  sw $t1, 44($sp)
  sw $t2, 380($sp)
  lw $t0, 388($sp)
  lw $t1, 384($sp)
  move $t0, $t1
  sw $t0, 388($sp)
  sw $t1, 384($sp)
  lw $t0, 372($sp)
  lw $t9, 388($sp)
  lw $t1, 0($t9)
  sw $t1, 0($t0)
  sw $t0, 372($sp)
  lw $t0, 392($sp)
  lw $t1, 388($sp)
  lw $t0, 0($t1)
  sw $t0, 392($sp)
  sw $t1, 388($sp)
  lw $t0, 96($sp)
  li $t0, 0
  sw $t0, 96($sp)
  lw $t0, 396($sp)
  lw $t1, 96($sp)
  move $t0, $t1
  sw $t0, 396($sp)
  sw $t1, 96($sp)
  lw $t0, 400($sp)
  lw $t1, 132($sp)
  addi $t0, $t1, -1
  sw $t0, 400($sp)
  sw $t1, 132($sp)
  lw $t0, 132($sp)
  lw $t1, 400($sp)
  move $t0, $t1
  sw $t0, 132($sp)
  sw $t1, 400($sp)
  lw $t0, 404($sp)
  lw $t1, 132($sp)
  move $t0, $t1
  sw $t0, 404($sp)
  sw $t1, 132($sp)
  lw $t0, 408($sp)
  li $t0, 0
  sw $t0, 408($sp)
  lw $t0, 412($sp)
  lw $t1, 408($sp)
  move $t0, $t1
  sw $t0, 412($sp)
  sw $t1, 408($sp)
label19:
  lw $t0, 96($sp)
  li $t8, 0
  beq $t0, $t8, label20
  sw $t0, 96($sp)
  j label21
label20:
  lw $t0, 96($sp)
  li $t0, 1
  sw $t0, 96($sp)
  lw $t0, 416($sp)
  lw $t1, 96($sp)
  move $t0, $t1
  sw $t0, 416($sp)
  sw $t1, 96($sp)
  lw $t0, 420($sp)
  lw $t1, 408($sp)
  li $t8, 2
  mul $t0, $t1, $t8
  sw $t0, 420($sp)
  sw $t1, 408($sp)
  lw $t0, 424($sp)
  lw $t1, 420($sp)
  addi $t0, $t1, 1
  sw $t0, 424($sp)
  sw $t1, 420($sp)
  lw $t0, 160($sp)
  lw $t1, 424($sp)
  move $t0, $t1
  sw $t0, 160($sp)
  sw $t1, 424($sp)
  lw $t0, 428($sp)
  lw $t1, 160($sp)
  move $t0, $t1
  sw $t0, 428($sp)
  sw $t1, 160($sp)
  lw $t0, 432($sp)
  lw $t1, 408($sp)
  li $t8, 2
  mul $t0, $t1, $t8
  sw $t0, 432($sp)
  sw $t1, 408($sp)
  lw $t0, 436($sp)
  lw $t1, 432($sp)
  addi $t0, $t1, 2
  sw $t0, 436($sp)
  sw $t1, 432($sp)
  lw $t0, 176($sp)
  lw $t1, 436($sp)
  move $t0, $t1
  sw $t0, 176($sp)
  sw $t1, 436($sp)
  lw $t0, 440($sp)
  lw $t1, 176($sp)
  move $t0, $t1
  sw $t0, 440($sp)
  sw $t1, 176($sp)
  lw $t0, 160($sp)
  lw $t1, 132($sp)
  blt $t0, $t1, label22
  sw $t0, 160($sp)
  sw $t1, 132($sp)
  j label23
label22:
  lw $t0, 444($sp)
  li $t8, 4
  lw $t1, 160($sp)
  mul $t0, $t8, $t1
  sw $t0, 444($sp)
  sw $t1, 160($sp)
  lw $t0, 448($sp)
  lw $t1, 44($sp)
  lw $t2, 444($sp)
  add $t0, $t1, $t2
  sw $t0, 448($sp)
  sw $t1, 44($sp)
  sw $t2, 444($sp)
  lw $t0, 452($sp)
  lw $t1, 448($sp)
  move $t0, $t1
  sw $t0, 452($sp)
  sw $t1, 448($sp)
  lw $t0, 196($sp)
  lw $t1, 452($sp)
  lw $t0, 0($t1)
  sw $t0, 196($sp)
  sw $t1, 452($sp)
  lw $t0, 456($sp)
  lw $t1, 196($sp)
  move $t0, $t1
  sw $t0, 456($sp)
  sw $t1, 196($sp)
  lw $t0, 176($sp)
  lw $t1, 132($sp)
  blt $t0, $t1, label26
  sw $t0, 176($sp)
  sw $t1, 132($sp)
  j label25
label26:
  lw $t0, 460($sp)
  li $t8, 4
  lw $t1, 176($sp)
  mul $t0, $t8, $t1
  sw $t0, 460($sp)
  sw $t1, 176($sp)
  lw $t0, 464($sp)
  lw $t1, 44($sp)
  lw $t2, 460($sp)
  add $t0, $t1, $t2
  sw $t0, 464($sp)
  sw $t1, 44($sp)
  sw $t2, 460($sp)
  lw $t0, 468($sp)
  lw $t1, 464($sp)
  move $t0, $t1
  sw $t0, 468($sp)
  sw $t1, 464($sp)
  lw $t0, 472($sp)
  li $t8, 4
  lw $t1, 160($sp)
  mul $t0, $t8, $t1
  sw $t0, 472($sp)
  sw $t1, 160($sp)
  lw $t0, 476($sp)
  lw $t1, 44($sp)
  lw $t2, 472($sp)
  add $t0, $t1, $t2
  sw $t0, 476($sp)
  sw $t1, 44($sp)
  sw $t2, 472($sp)
  lw $t0, 480($sp)
  lw $t1, 476($sp)
  move $t0, $t1
  sw $t0, 480($sp)
  sw $t1, 476($sp)
  lw $t9, 468($sp)
  lw $t0, 0($t9)
  lw $t9, 480($sp)
  lw $t1, 0($t9)
  blt $t0, $t1, label24
  j label25
label24:
  lw $t0, 484($sp)
  li $t8, 4
  lw $t1, 176($sp)
  mul $t0, $t8, $t1
  sw $t0, 484($sp)
  sw $t1, 176($sp)
  lw $t0, 488($sp)
  lw $t1, 44($sp)
  lw $t2, 484($sp)
  add $t0, $t1, $t2
  sw $t0, 488($sp)
  sw $t1, 44($sp)
  sw $t2, 484($sp)
  lw $t0, 492($sp)
  lw $t1, 488($sp)
  move $t0, $t1
  sw $t0, 492($sp)
  sw $t1, 488($sp)
  lw $t0, 196($sp)
  lw $t1, 492($sp)
  lw $t0, 0($t1)
  sw $t0, 196($sp)
  sw $t1, 492($sp)
  lw $t0, 496($sp)
  lw $t1, 196($sp)
  move $t0, $t1
  sw $t0, 496($sp)
  sw $t1, 196($sp)
  lw $t0, 160($sp)
  lw $t1, 176($sp)
  move $t0, $t1
  sw $t0, 160($sp)
  sw $t1, 176($sp)
  lw $t0, 500($sp)
  lw $t1, 160($sp)
  move $t0, $t1
  sw $t0, 500($sp)
  sw $t1, 160($sp)
label25:
  lw $t0, 504($sp)
  li $t8, 4
  lw $t1, 408($sp)
  mul $t0, $t8, $t1
  sw $t0, 504($sp)
  sw $t1, 408($sp)
  lw $t0, 508($sp)
  lw $t1, 44($sp)
  lw $t2, 504($sp)
  add $t0, $t1, $t2
  sw $t0, 508($sp)
  sw $t1, 44($sp)
  sw $t2, 504($sp)
  lw $t0, 512($sp)
  lw $t1, 508($sp)
  move $t0, $t1
  sw $t0, 512($sp)
  sw $t1, 508($sp)
  lw $t9, 512($sp)
  lw $t0, 0($t9)
  lw $t1, 196($sp)
  bgt $t0, $t1, label27
  sw $t1, 196($sp)
  j label28
label27:
  lw $t0, 96($sp)
  li $t0, 0
  sw $t0, 96($sp)
  lw $t0, 516($sp)
  lw $t1, 96($sp)
  move $t0, $t1
  sw $t0, 516($sp)
  sw $t1, 96($sp)
  lw $t0, 520($sp)
  li $t8, 4
  lw $t1, 160($sp)
  mul $t0, $t8, $t1
  sw $t0, 520($sp)
  sw $t1, 160($sp)
  lw $t0, 524($sp)
  lw $t1, 44($sp)
  lw $t2, 520($sp)
  add $t0, $t1, $t2
  sw $t0, 524($sp)
  sw $t1, 44($sp)
  sw $t2, 520($sp)
  lw $t0, 528($sp)
  lw $t1, 524($sp)
  move $t0, $t1
  sw $t0, 528($sp)
  sw $t1, 524($sp)
  lw $t0, 532($sp)
  li $t8, 4
  lw $t1, 408($sp)
  mul $t0, $t8, $t1
  sw $t0, 532($sp)
  sw $t1, 408($sp)
  lw $t0, 536($sp)
  lw $t1, 44($sp)
  lw $t2, 532($sp)
  add $t0, $t1, $t2
  sw $t0, 536($sp)
  sw $t1, 44($sp)
  sw $t2, 532($sp)
  lw $t0, 540($sp)
  lw $t1, 536($sp)
  move $t0, $t1
  sw $t0, 540($sp)
  sw $t1, 536($sp)
  lw $t0, 528($sp)
  lw $t9, 540($sp)
  lw $t1, 0($t9)
  sw $t1, 0($t0)
  sw $t0, 528($sp)
  lw $t0, 544($sp)
  lw $t1, 540($sp)
  lw $t0, 0($t1)
  sw $t0, 544($sp)
  sw $t1, 540($sp)
  lw $t0, 548($sp)
  li $t8, 4
  lw $t1, 408($sp)
  mul $t0, $t8, $t1
  sw $t0, 548($sp)
  sw $t1, 408($sp)
  lw $t0, 552($sp)
  lw $t1, 44($sp)
  lw $t2, 548($sp)
  add $t0, $t1, $t2
  sw $t0, 552($sp)
  sw $t1, 44($sp)
  sw $t2, 548($sp)
  lw $t0, 556($sp)
  lw $t1, 552($sp)
  move $t0, $t1
  sw $t0, 556($sp)
  sw $t1, 552($sp)
  lw $t0, 556($sp)
  lw $t1, 196($sp)
  sw $t1, 0($t0)
  sw $t0, 556($sp)
  sw $t1, 196($sp)
  lw $t0, 560($sp)
  lw $t1, 196($sp)
  move $t0, $t1
  sw $t0, 560($sp)
  sw $t1, 196($sp)
  lw $t0, 408($sp)
  lw $t1, 160($sp)
  move $t0, $t1
  sw $t0, 408($sp)
  sw $t1, 160($sp)
  lw $t0, 564($sp)
  lw $t1, 408($sp)
  move $t0, $t1
  sw $t0, 564($sp)
  sw $t1, 408($sp)
label28:
label23:
  j label19
label21:
  j label16
label18:
  lw $t0, 92($sp)
  li $t0, 0
  sw $t0, 92($sp)
  lw $t0, 568($sp)
  lw $t1, 92($sp)
  move $t0, $t1
  sw $t0, 568($sp)
  sw $t1, 92($sp)
label29:
  lw $t0, 92($sp)
  lw $t1, 0($sp)
  blt $t0, $t1, label30
  sw $t0, 92($sp)
  sw $t1, 0($sp)
  j label31
label30:
  lw $t0, 572($sp)
  li $t8, 4
  lw $t1, 92($sp)
  mul $t0, $t8, $t1
  sw $t0, 572($sp)
  sw $t1, 92($sp)
  lw $t0, 576($sp)
  lw $t1, 88($sp)
  lw $t2, 572($sp)
  add $t0, $t1, $t2
  sw $t0, 576($sp)
  sw $t1, 88($sp)
  sw $t2, 572($sp)
  lw $t0, 580($sp)
  lw $t1, 576($sp)
  move $t0, $t1
  sw $t0, 580($sp)
  sw $t1, 576($sp)
  lw $t9, 580($sp)
  lw $t0, 0($t9)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  lw $t0, 584($sp)
  lw $t1, 92($sp)
  addi $t0, $t1, 1
  sw $t0, 584($sp)
  sw $t1, 92($sp)
  lw $t0, 92($sp)
  lw $t1, 584($sp)
  move $t0, $t1
  sw $t0, 92($sp)
  sw $t1, 584($sp)
  lw $t0, 588($sp)
  lw $t1, 92($sp)
  move $t0, $t1
  sw $t0, 588($sp)
  sw $t1, 92($sp)
  j label29
label31:
  li $t8, 0
  addi $sp, $sp, 592
  move $v0, $t8
  jr $ra
