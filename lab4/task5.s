.data 
    n: .byte 20
    
.text
    la t0,n
    lb a2,0(t0) # stor 5 (outer loop) in a0
    
    li t0, 1
    sub t0,a2,t0 # store the begining number of spaces in t0
    
    li t1, 1 # store the number of starts in t1
    
    li t2, 0 # make an i for the outer loop with 0
    
    li t3, 0 #make an i for spaces loop
    li t4, 0 #make an i for stars loop
    #begin the loops
    
rows_loop:
    bge t2,a2,rows_loop_break
    
    spaces_loop:
        #print spaces
        bge t3,t0,stars_loop
        li a1, 0x20
        li a0, 11
        ecall
        addi t3,t3,1
        jal x0,spaces_loop
     stars_loop:
        #print stars
        bge t4,t1,next_state
        li a1,0x2A
        li a0, 11
        ecall
        addi t4,t4,1
        jal x0,stars_loop                
     next_state:
        #increment and decrement stuff
        li t3,0
        li t4,0
        addi t1,t1,2
        li t5,1
        sub t0,t0,t5
        addi t2,t2,1
        li a1, 0x0D
        li a0,11
        ecall
        jal x0,rows_loop
    
    
rows_loop_break:
    li a0,10
    
    ecall