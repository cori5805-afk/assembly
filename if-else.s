.global _start
_start:

	movi r4, 25		# assign values to r4, r5, r6 to check max of the numbers stored
	movi r5, -50
	movi r6, 100
	
	mov r2, r4	# move r4 to r2 so we can compare it with cmple on the next line

	cmple r3, r2, r5 # compare if less than (r2 <= r5) store 1 if true 0 if false
					 # effectively r4<=r5 condition
	
	beq r3, r0, loop # if r3 is 0, r2 (effectively r4) is not <= r5
					 # so this stores r4 in r2 as current max
	
	mov r2, r5	# move r5 to r2 if r2 <= r5 since r3 yields true (stores value of r5 as current max)

loop:

	cmple r3, r2, r6 # compare if r2 <= r6
					 # where r2 is either the value of r4 or r5 from the code above
	
	beq r3, r0, done # if r3 yields false go to done (r4 or r5 is max, already stored in r2)
	
	mov r2, r6 # if r3 yields true (r3 != 0) than r6 is greatest so store r6 in r2

done:
