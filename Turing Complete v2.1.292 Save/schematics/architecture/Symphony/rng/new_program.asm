in r1
main:
lsr r2, r1, 13
xor r2, r1, r2

lsl r3, r2, 17
xor r3, r2, r3

lsr r1, r3, 5
xor r1, r3, r1

out r1
jmp main