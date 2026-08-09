imm 1
mov r4, r0
; if (in == 37)
false:
imm 37
mov r2, r0
mov r1, in
sub
mov r1, r5
mov r2, r0
add
mov r5, r3
imm false
jz
imm true
; +1
true:
mov out, r4