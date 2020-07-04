#battleships game

.data


welcomemsg: .asciiz "\n****Welcome to the game of battleships****"
rowprint:   .asciiz "\n       [1]   [2]   [3]   [4]   [5]   [6]   [7]   [8]   [9]   [10] "
difficulty:.asciiz "\nChoose your level of difficulty"
easy:      .asciiz "\n 1.Easy"
medium:    .asciiz "\n 2.Medium"
hard:      .asciiz "\n 3.Hard"
miss:      .asciiz "\n***********You missed try again***********"
hit:       .asciiz "\n***********You hit a ship*****************"
stars:     .asciiz "\n*******************************************************"
destroyed2: .asciiz "\nYou have successfully destroyed the submarine"
destroyed8: .asciiz "\nYou have successfully destroyed the air-craft carrier"
destroyed5: .asciiz "\nYou have successfully destroyed the liferaft "
destroyed9: .asciiz "\nYou have successfully destroyed the cruiser "
easyinstr: .asciiz "\nInstructions :  You have to take down your enemy's fleet of ships which consists of air-craft carrier (size=4),cruiser(size=3), submarine(size=2), and liferaft(size=1)"
easyinstr2: .asciiz "\nNotations : 9 means you missed, 1 means a hit , 0 means the area is unexplored "
easybegin: .asciiz "\n--------------Your game is going to begin------------------"

location: .asciiz "\nEnter your position to strike"
locatx:   .asciiz "\nEnter the x coordinate of the position to strike"
locaty:   .asciiz "\nEnter the y coordinate of the position to strike"

gameover: .asciiz "\n-----------------You have destroyed all of your enemy's ships,thanks for playing------------------------"
anotherround: .asciiz "\nThe game has finished , would you like to play another round?, enter 1 for yes, 0 for no"
shotshit: .asciiz "\nSuccessful Hits: "
shotsmissed: .asciiz "\nMissed Shots: "
totalshots: .asciiz "\nTotal shots fired: "
timetaken: .asciiz "\nTotal time taken for you to finish the game is "


.align 4
array1:  .space 60
array2:  .space 60
array3:  .space 60
array4:  .space 60
array5:  .space 60
array6:  .space 60
array7:  .space 60
array8:  .space 60
array9:  .space 60
array10: .space 60

newline: .asciiz "\n"
space:   .asciiz "     "
space10: .asciiz "    "


row1: .asciiz "[1]"
row2: .asciiz "[2]"
row3: .asciiz "[3]"
row4: .asciiz "[4]"
row5: .asciiz "[5]"
row6: .asciiz "[6]"
row7: .asciiz "[7]"
row8: .asciiz "[8]"
row9: .asciiz "[9]"
row10: .asciiz "[10]"

.text 

main:
startnewgame:
li $v0,30
syscall
move $k0,$a0
array1val:
addi $t1,$zero,0
addi $t3,$zero,10
addi $t0,$zero,0
addi $t4,$zero,0
addi $t9,$zero,0

array1init:
bgt $t1,$t3,array2val
addi $s0,$zero,0
sw $s0,array1($t0)
addi $t0,$t0,4
addi $t1,$t1,1
j array1init

array2val:
addi $t1,$zero,0
addi $t3,$zero,10
addi $t0,$zero,0

array2init:
bgt $t1,$t3,array3val
addi $s0,$zero,0
sw $s0,array2($t0)
addi $t0,$t0,4
addi $t1,$t1,1
j array2init

array3val:
addi $t1,$zero,0
addi $t3,$zero,10
addi $t0,$zero,0

array3init:
bgt $t1,$t3,array4val
addi $s0,$zero,0
sw $s0,array3($t0)
addi $t0,$t0,4
addi $t1,$t1,1
j array3init

array4val:
addi $t1,$zero,0
addi $t3,$zero,10
addi $t0,$zero,0

array4init:
bgt $t1,$t3,array5val
addi $s0,$zero,0
sw $s0,array4($t0)
addi $t0,$t0,4
addi $t1,$t1,1
j array4init

array5val:
addi $t1,$zero,0
addi $t3,$zero,10
addi $t0,$zero,0

array5init:
bgt $t1,$t3,array6val
addi $s0,$zero,0
sw $s0,array5($t0)
addi $t0,$t0,4
addi $t1,$t1,1
j array5init

array6val:
addi $t1,$zero,0
addi $t3,$zero,10
addi $t0,$zero,0

array6init:
bgt $t1,$t3,array7val
addi $s0,$zero,0
sw $s0,array6($t0)
addi $t0,$t0,4
addi $t1,$t1,1
j array6init

array7val:
addi $t1,$zero,0
addi $t3,$zero,10
addi $t0,$zero,0

array7init:
bgt $t1,$t3,array8val
addi $s0,$zero,0
sw $s0,array7($t0)
addi $t0,$t0,4
addi $t1,$t1,1
j array7init

array8val:
addi $t1,$zero,0
addi $t3,$zero,10
addi $t0,$zero,0

array8init:
bgt $t1,$t3,array9val
addi $s0,$zero,0
sw $s0,array8($t0)
addi $t0,$t0,4
addi $t1,$t1,1
j array8init

array9val:
addi $t1,$zero,0
addi $t3,$zero,10
addi $t0,$zero,0

array9init:
bgt $t1,$t3,array10val
addi $s0,$zero,0
sw $s0,array9($t0)
addi $t0,$t0,4
addi $t1,$t1,1
j array9init

array10val:
addi $t1,$zero,0
addi $t3,$zero,10
addi $t0,$zero,0

array10init:
bgt $t1,$t3,nextline
addi $s0,$zero,0
sw $s0,array10($t0)
addi $t0,$t0,4
addi $t1,$t1,1
j array10init

nextline:
addi $s2,$zero,0
addi $s3,$zero,0
addi $s4,$zero,0
addi $s5,$zero,0
#levelsofdiff
li $v0,4
la $a0,newline
syscall

li $v0,4
la $a0,welcomemsg
syscall 

li $v0,4
la $a0,newline
syscall


li $v0,4
la $a0,difficulty
syscall

li $v0,4
la $a0,easy
syscall

li $v0,4
la $a0,medium
syscall

li $v0,4
la $a0,hard
syscall

li $v0,5
syscall

move $t7,$v0

beq $t7,1,easyinit



easyinit:
addi $s6,$zero,0
addi $s7,$zero,-1
addi $t8,$zero,0
li $v0,4
la $a0,easyinstr
syscall
li $v0,4
la $a0,newline
syscall
li $v0,4
la $a0,easyinstr2
syscall
li $v0,4
la $a0,newline
syscall
li $v0,4
la $a0,easybegin 
syscall
li $v0,4
la $a0,newline
syscall
jal begingame

begingame:
#while loop
beq $s6,$s7,exit
li $v0,4
la $a0,rowprint
syscall
li $v0,4
la $a0,newline
syscall
li $v0,4
la $a0,newline
syscall
li $v0,4
la $a0,row1
syscall
li $v0,4
la $a0,space
syscall

#row1
addi $t0,$zero,0
lw $t6,array1($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,4
lw $t6,array1($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,8
lw $t6,array1($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,12
lw $t6,array1($t0)
li $v0,1
move $a0,$t6
syscall
li $v0,4
la $a0,space
syscall

addi $t0,$zero,16
lw $t6,array1($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,20
lw $t6,array1($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,24
lw $t6,array1($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,28
lw $t6,array1($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,32
lw $t6,array1($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,36
lw $t6,array1($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

li $v0,4
la $a0,newline
syscall

li $v0,4
la $a0,newline
syscall



li $v0,4
la $a0,row2
syscall

li $v0,4
la $a0,space
syscall

#row2

addi $t0,$zero,0
lw $t6,array2($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,4
lw $t6,array2($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,8
lw $t6,array2($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,12
lw $t6,array2($t0)
li $v0,1
move $a0,$t6
syscall
li $v0,4
la $a0,space
syscall

addi $t0,$zero,16
lw $t6,array2($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,20
lw $t6,array2($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,24
lw $t6,array2($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,28
lw $t6,array2($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,32
lw $t6,array2($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,36
lw $t6,array2($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

li $v0,4
la $a0,newline
syscall

#row3
li $v0,4
la $a0,newline
syscall


li $v0,4
la $a0,row3
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,0
lw $t6,array3($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,4
lw $t6,array3($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,8
lw $t6,array3($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,12
lw $t6,array3($t0)
li $v0,1
move $a0,$t6
syscall
li $v0,4
la $a0,space
syscall

addi $t0,$zero,16
lw $t6,array3($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,20
lw $t6,array3($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,24
lw $t6,array3($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,28
lw $t6,array3($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,32
lw $t6,array3($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,36
lw $t6,array3($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

li $v0,4
la $a0,newline
syscall

#row4
li $v0,4
la $a0,newline
syscall


li $v0,4
la $a0,row4
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,0
lw $t6,array4($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,4
lw $t6,array4($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,8
lw $t6,array4($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,12
lw $t6,array4($t0)
li $v0,1
move $a0,$t6
syscall
li $v0,4
la $a0,space
syscall

addi $t0,$zero,16
lw $t6,array4($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,20
lw $t6,array4($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,24
lw $t6,array4($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,28
lw $t6,array4($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,32
lw $t6,array4($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,36
lw $t6,array4($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

li $v0,4
la $a0,newline
syscall

#row5
li $v0,4
la $a0,newline
syscall


li $v0,4
la $a0,row5
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,0
lw $t6,array5($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,4
lw $t6,array5($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,8
lw $t6,array5($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,12
lw $t6,array5($t0)
li $v0,1
move $a0,$t6
syscall
li $v0,4
la $a0,space
syscall

addi $t0,$zero,16
lw $t6,array5($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,20
lw $t6,array5($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,24
lw $t6,array5($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,28
lw $t6,array5($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,32
lw $t6,array5($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,36
lw $t6,array5($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

li $v0,4
la $a0,newline
syscall


#row6
li $v0,4
la $a0,newline
syscall


li $v0,4
la $a0,row6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,0
lw $t6,array6($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,4
lw $t6,array6($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,8
lw $t6,array6($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,12
lw $t6,array6($t0)
li $v0,1
move $a0,$t6
syscall
li $v0,4
la $a0,space
syscall

addi $t0,$zero,16
lw $t6,array6($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,20
lw $t6,array6($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,24
lw $t6,array6($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,28
lw $t6,array6($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,32
lw $t6,array6($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,36
lw $t6,array6($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

li $v0,4
la $a0,newline
syscall


#row7
li $v0,4
la $a0,newline
syscall


li $v0,4
la $a0,row7
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,0
lw $t6,array7($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,4
lw $t6,array7($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,8
lw $t6,array7($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,12
lw $t6,array7($t0)
li $v0,1
move $a0,$t6
syscall
li $v0,4
la $a0,space
syscall

addi $t0,$zero,16
lw $t6,array7($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,20
lw $t6,array7($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,24
lw $t6,array7($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,28
lw $t6,array7($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,32
lw $t6,array7($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,36
lw $t6,array7($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

li $v0,4
la $a0,newline
syscall

#row8
li $v0,4
la $a0,newline
syscall

li $v0,4
la $a0,row8
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,0
lw $t6,array8($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,4
lw $t6,array8($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,8
lw $t6,array8($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,12
lw $t6,array8($t0)
li $v0,1
move $a0,$t6
syscall
li $v0,4
la $a0,space
syscall

addi $t0,$zero,16
lw $t6,array8($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,20
lw $t6,array8($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,24
lw $t6,array8($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,28
lw $t6,array8($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,32
lw $t6,array8($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,36
lw $t6,array8($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

li $v0,4
la $a0,newline
syscall

#row9
li $v0,4
la $a0,newline
syscall


li $v0,4
la $a0,row9
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,0
lw $t6,array9($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,4
lw $t6,array9($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,8
lw $t6,array9($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,12
lw $t6,array9($t0)
li $v0,1
move $a0,$t6
syscall
li $v0,4
la $a0,space
syscall

addi $t0,$zero,16
lw $t6,array9($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,20
lw $t6,array9($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,24
lw $t6,array9($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,28
lw $t6,array9($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,32
lw $t6,array9($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,36
lw $t6,array9($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

li $v0,4
la $a0,newline
syscall

#row10
li $v0,4
la $a0,newline
syscall


li $v0,4
la $a0,row10
syscall

li $v0,4
la $a0,space10
syscall

addi $t0,$zero,0
lw $t6,array10($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,4
lw $t6,array10($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,8
lw $t6,array10($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,12
lw $t6,array10($t0)
li $v0,1
move $a0,$t6
syscall
li $v0,4
la $a0,space
syscall

addi $t0,$zero,16
lw $t6,array10($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,20
lw $t6,array10($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,24
lw $t6,array10($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,28
lw $t6,array10($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,32
lw $t6,array10($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

addi $t0,$zero,36
lw $t6,array10($t0)
li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,space
syscall

li $v0,4
la $a0,newline
syscall

li $v0,4
la $a0,newline
syscall
li $v0,4
la $a0,locatx
syscall
li $v0,5
syscall
move $t0,$v0
li $v0,4
la $a0,locaty
syscall
li $v0,5
syscall
move $t1,$v0
addi $t4,$t4,1
beq $t7,1,easylevels
beq $t7,2,mediumlevels
beq $t7,3,hardlevels
j begingameeasy

easylevels:
beq $t0,1,strikeoneeasy
beq $t0,2,strikesecondeasy	#submarine
beq $t0,3,strikethreeeasy
beq $t0,4,strikefoureasy
beq $t0,5,strikefiftheasy	#life raft
beq $t0,6,strikesixeasy
beq $t0,7,strikeseveneasy
beq $t0,8,strikeeighteasy	#aircracft carrier
beq $t0,9,strikenineeasy	#cruiser
beq $t0,10,striketeneasy	
jr $ra

mediumlevels:
beq $t0,1,strikeoneeasy
beq $t0,2,strikesecondmed	
beq $t0,3,strikethreeeasy
beq $t0,4,strikefourmed		#aircraft carrier
beq $t0,5,strikefifthmed	#cruiser
beq $t0,6,strikesixmed		#submarine
beq $t0,7,strikesevenmed	#liferaft
beq $t0,8,strikeeightmed	
beq $t0,9,strikeninemed	
beq $t0,10,striketeneasy

hardlevels:
beq $t0,1,strikeoneeasy
beq $t0,2,strikesecondeasy	#submarine
beq $t0,3,strikethreeeasy
beq $t0,4,strikefourmed		#aircraft carrier
beq $t0,5,strikefiftheasy	#life raft
beq $t0,6,strikesixeasy
beq $t0,7,strikeseveneasy
beq $t0,8,strikeeightmed
beq $t0,9,strikenineeasy	#cruiser
beq $t0,10,striketeneasy

exit:
li $v0,10
syscall

missedtargetsecond:
li $v0,4
la $a0,miss 
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array2($t1)
jr $ra

hitshipsecond:
addi $t9,$t9,1
addi $s2,$s2,1
addi $t5,$zero,1
li $v0,4
la $a0,hit
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array2($t1)
beq $s2,2,destroyedship2
jr $ra


missedtargetfifth:
li $v0,4
la $a0,miss 
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array5($t1)
jr $ra

hitshipfifth:
addi $t9,$t9,1
addi $s4,$s4,1
addi $t5,$zero,1
li $v0,4
la $a0,hit
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array5($t1)
beq $s4,1,destroyedship5
jr $ra

missedtargeteight:
li $v0,4
la $a0,miss 
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array8($t1)
jr $ra

hitshipeight:
addi $t9,$t9,1
addi $s3,$s3,1
addi $t5,$zero,1
li $v0,4
la $a0,hit
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array8($t1)
beq $s3,4,destroyedship8
jr $ra

missedtargetnine:
li $v0,4
la $a0,miss 
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array9($t1)
jr $ra

hitshipnine:
addi $t9,$t9,1
addi $s5,$s5,1
addi $t5,$zero,1
li $v0,4
la $a0,hit
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array9($t1)
beq $s5,3,destroyedship9
jr $ra

missedtargetone:
li $v0,4
la $a0,miss 
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array1($t1)
jr $ra

missedtargetthree:
li $v0,4
la $a0,miss 
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array3($t1)
jr $ra

missedtargetfour:
li $v0,4
la $a0,miss 
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array4($t1)
jr $ra

missedtargetsix:
li $v0,4
la $a0,miss 
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array6($t1)
jr $ra

missedtargetseven:
li $v0,4
la $a0,miss 
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array7($t1)
jr $ra

missedtargetten:
li $v0,4
la $a0,miss 
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array10($t1)
jr $ra


destroyedship2:
addi $t8,$t8,1
li $v0,4
la $a0,stars
syscall
li $v0,4
la $a0,destroyed2
syscall
li $v0,4
la $a0,stars
syscall
li $v0,4
la $a0,newline
syscall
beq $t8,4,gameovereasy
jr $ra

destroyedship8:
addi $t8,$t8,1
li $v0,4
la $a0,stars
syscall
li $v0,4
la $a0,destroyed8
syscall
li $v0,4
la $a0,stars
syscall
li $v0,4
la $a0,newline
syscall
beq $t8,4,gameovereasy
jr $ra

destroyedship5:
addi $t8,$t8,1
li $v0,4
la $a0,stars
syscall
li $v0,4
la $a0,destroyed5
syscall
li $v0,4
la $a0,stars
syscall
li $v0,4
la $a0,newline
syscall
beq $t8,4,gameovereasy
jr $ra

destroyedship9:
addi $t8,$t8,1
li $v0,4
la $a0,stars
syscall
li $v0,4
la $a0,destroyed9
syscall
li $v0,4
la $a0,stars
syscall
li $v0,4
la $a0,newline
syscall
beq $t8,4,gameovereasy
jr $ra


strikesecondeasy:
#ship1
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
addi $t5,$zero,9
beq $t1,0,hitshipsecond
beq $t1,4,hitshipsecond
bne $t5,1,missedtargetsecond
jr $ra

strikefiftheasy:
#ship2
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
addi $t5,$zero,9
beq $t1,36,hitshipfifth
bne $t5,1,missedtargetfifth
jr $ra

strikeeighteasy:
#ship 3
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
addi $t5,$zero,9
beq $t1,16,hitshipeight
beq $t1,20,hitshipeight
beq $t1,24,hitshipeight
beq $t1,28,hitshipeight
bne $t5,1,missedtargeteight
jr $ra


strikenineeasy:
#ship 4
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
addi $t5,$zero,9
beq $t1,8,hitshipnine
beq $t1,12,hitshipnine
beq $t1,16,hitshipnine
bne $t5,1,missedtargetnine
jr $ra

strikeoneeasy:
addi $t5,$zero,9
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
bne $t1,1,missedtargetone
jr $ra

strikethreeeasy:
addi $t5,$zero,9
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
bne $t1,1,missedtargetthree
jr $ra

strikefoureasy:
addi $t5,$zero,9
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
bne $t1,1,missedtargetfour
jr $ra

strikesixeasy:
addi $t5,$zero,9
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
bne $t1,1,missedtargetsix
jr $ra

strikeseveneasy:
addi $t5,$zero,9
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
bne $t1,1,missedtargetseven
jr $ra

striketeneasy:
addi $t5,$zero,9
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
bne $t1,1,missedtargetten
jr $ra

#mediumlevels
missedtargetmed4:
li $v0,4
la $a0,miss 
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array4($t1)
jr $ra

hitshipmed4:
addi $t9,$t9,1
addi $s3,$s3,1
addi $t5,$zero,1
li $v0,4
la $a0,hit
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array4($t1)
beq $s3,4,destroyedship8
jr $ra

strikefourmed:
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
addi $t5,$zero,9
beq $t1,8,hitshipmed4
beq $t1,12,hitshipmed4
beq $t1,16,hitshipmed4
beq $t1,20,hitshipmed4
bne $t5,1,missedtargetmed4
jr $ra

missedtargetmed5:
li $v0,4
la $a0,miss 
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array5($t1)
jr $ra

hitshipmed5:
addi $t9,$t9,1
addi $s5,$s5,1
addi $t5,$zero,1
li $v0,4
la $a0,hit
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array5($t1)
beq $s5,3,destroyedship9
jr $ra

strikefifthmed:
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
addi $t5,$zero,9
beq $t1,8,hitshipmed5
beq $t1,12,hitshipmed5
beq $t1,16,hitshipmed5
bne $t5,1,missedtargetmed5
jr $ra

missedtargetmed6:
li $v0,4
la $a0,miss 
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array6($t1)
jr $ra

hitshipmed6:
addi $t9,$t9,1
addi $s2,$s2,1
addi $t5,$zero,1
li $v0,4
la $a0,hit
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array6($t1)
beq $s2,2,destroyedship2
jr $ra

strikesixmed:
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
addi $t5,$zero,9
beq $t1,8,hitshipmed6
beq $t1,12,hitshipmed6
bne $t5,1,missedtargetmed6
jr $ra


missedtargetmed7:
li $v0,4
la $a0,miss 
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array7($t1)
jr $ra

hitshipmed7:
addi $t9,$t9,1
addi $s4,$s4,1
addi $t5,$zero,1
li $v0,4
la $a0,hit
syscall
li $v0,4
la $a0,newline
syscall
move $s1,$t5
sw $s1,array7($t1)
beq $s4,1,destroyedship5
jr $ra

strikesevenmed:
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
addi $t5,$zero,9
beq $t1,8,hitshipmed7
bne $t5,1,missedtargetmed7
jr $ra

strikesecondmed:
addi $t5,$zero,9
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
bne $t1,1,missedtargetsecond
jr $ra

strikeeightmed:
addi $t5,$zero,9
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
bne $t1,1,missedtargeteight
jr $ra

strikeninemed:
addi $t5,$zero,9
move $s0,$t1
addi $s1,$zero,4
mul $t1,$s0,$s1
sub $t1,$t1,$s1
bne $t1,1,missedtargetnine
jr $ra


gameovereasy:
li $v0,30
syscall
move $k1,$a0
li $v0,4
la $a0,gameover
syscall
li $v0,4
la $a0,newline
syscall
li $v0,4
la $a0,shotshit
syscall
li $v0,1
move $a0,$t9
syscall
sub $t9,$t4,$t9
li $v0,4
la $a0,shotsmissed
syscall
li $v0,1
move $a0,$t9
syscall
li $v0,4
la $a0,totalshots
syscall
li $v0,1
move $a0,$t4
syscall
li $v0,4
la $a0,newline
syscall
sub $k0,$k1,$k0
li $v0,4
la $a0,timetaken
syscall
li $v0,1
move $a0,$k0
syscall
li $v0,4
la $a0,newline
syscall
li $v0,4
la $a0,anotherround
syscall
li $v0,5
syscall
move $t9,$v0
beq $t9,0,exit
beq $t9,1,startnewgame

