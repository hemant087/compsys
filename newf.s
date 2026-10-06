.data
.balign 4
fmtstring: .asciz "%d\n"
.text
.global main
.extern printf
main:
push {lr} @ save link register
@ our code here
mov r0, #12
mov r1, #1
.L6:
cmp r0, #1
blt .L5
mul r1, r0, r1
sub r0, r0, #1
b .L6
.L5:
mov r0, r1
@ print our value stored in r1 - don't change any code below
ldr r0, =fmtstring
bl printf
pop {lr} @ get original lr so we return OK
bx lr
