mov sp, 0x200
main:
in r1
cmp r1, 0
je pop
jmp push

push:
store_32 [sp], r1
add sp, sp, 4
jmp main
pop:
sub sp, sp, 4
load_32 r2, [sp]
out r2
jmp main
