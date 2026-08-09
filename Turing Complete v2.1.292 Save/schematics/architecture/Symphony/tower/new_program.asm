in r1 ; disk_nr
in r2 ; source
in r3 ; destination
in r4 ; spare

call hanoi

hanoi: ; function hanoi(disk_nr, source, destination, spare)
	push r1
	push r2
	push r3
	push r4
	
	cmp r1, 0 ; if (disk_nr == 0)
	je L_IF_1_TRUE
	
	jmp L_IF_1_FALSE
	L_IF_1_TRUE:
		out r2
		out 5
		out r3
		out 5
		
		pop r4
		pop r3
		pop r2
		pop r1
		ret
	L_IF_1_FALSE:
		push r1
		push r2
		push r3
		push r4
		sub r1, r1, 1
		xor r3, r3, r4
		xor r4, r3, r4
		xor r3, r3, r4
		call hanoi
		pop r4
		pop r3
		pop r2
		pop r1
		
		out r2
		out 5
		out r3
		out 5
		
		push r1
		push r2
		push r3
		push r4
		sub r1, r1, 1
		xor r2, r2, r4
		xor r4, r2, r4
		xor r2, r2, r4
		call hanoi
		pop r4
		pop r3
		pop r2
		pop r1
		
	pop r4
	pop r3
	pop r2
	pop r1
	ret