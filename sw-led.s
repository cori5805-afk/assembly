.text
.equ LEDs, 0xFF200000
.equ SWITCHES, 0xFF200040
.global _start
_start:


movia r2, LEDs # Address of LEDs

movia r3, SWITCHES # Address of switches

LOOP:

ldwio r4, (r3) # Read the state of switches

# your code here

andi r5, r4, 0x1f # get rightmost bits (rightmost 4 switches) store in r5 

srli r6, r4, 5 # splits switches into two separate registers

andi r6, r6, 0x1f # r6 now shifted to right most bits

add r4, r6, r5 # add A + B 

stwio r4, (r2) # Display the state on LEDs

br LOOP

