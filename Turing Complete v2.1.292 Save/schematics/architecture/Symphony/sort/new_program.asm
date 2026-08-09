mov r1, 208
mov r2, 0
L_FOR_1:
add r3, r1, r2
in r4
store_8 [r3], r4
add r2, r2, 1
cmp r2, 16
jb L_FOR_1

mov r6, 0
L_FOR_2:
mov r2, 0
mov r7,0
L_FOR_3_START:
add r3, r1, r2
load_8 r4, [r3]
add r2, r2, 1
add r3, r1, r2
load_8 r5, [r3]
cmp r4, r5
ja L_IF_1_TRUE
sub r2, r2, 1
jmp L_FOR_3_CHECK
L_IF_1_TRUE:
store_8 [r3], r4
sub r2, r2, 1
add r3, r1, r2
store_8 [r3], r5
mov r7, 1
L_FOR_3_CHECK:
add r2, r2, 1
mov r9, 15
sub r8, r9, r6
cmp r2, r8
jb L_FOR_3_START
cmp r7, 0
je L_FOR_4
add r6, r6, 1
cmp r6, 15
jb L_FOR_2

L_FOR_4:
mov r2, 0
L_FOR_4_START:
add r3, r1, r2
load_8 r4, [r3]
out r4
cmp r2,16
add r2, r2, 1
jb L_FOR_4_START

