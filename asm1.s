# simple operation returning result in r0 which is the return value to shell
# so echo $? will print it afterwards (only one byte)
.arm
.text
.global main
main:
	mov r0, #255
	mov r1, #2
	add r0, r0, r1
	bx lr
