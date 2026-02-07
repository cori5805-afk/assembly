.text
_start:
    movia   r4, N
    ldw     r4, 0(r4)
    movi    r2, 0

loop:

	beq r4, r0, done # verify if all integers have been added
	
	add r2, r2, r4 # add r4 and r2 store into r2
	
	subi r4, r4, 1 # decrement r4 (N)
	
	br loop # if beq statement is false start the loop again
	
done:

.data
N:  .word 9
