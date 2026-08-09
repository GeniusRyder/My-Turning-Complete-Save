mov r2, 1
main:
in r1
cmp r2, 1
je daxie
a:
out r1
cmp r1, 32
je space
jmp main

daxie:
sub r1, r1, 32
mov r2, 0
jmp a

space:
mov r2, 1
jmp main