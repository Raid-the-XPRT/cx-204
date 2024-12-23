.data 
    array   :   .word 1,4,7,5,9
    n       :   .word 5
    text1   :   .string "Original array: \n"
    text2   :   .string "Sorted array: \n"
    
.text
    main:

        la a1,text1
        li a0,4
        ecall
        la a0, array
        la a1, n
        
        addi sp,sp,-4
        sw a1, 0(sp)
        addi sp,sp,-4
        sw a0, 0(sp)
        
        lw a1, 0(a1)
        jal ra, print_array
        lw a0,0(sp)
        addi sp,sp,4
        lw a1,0(sp)
        addi sp,sp,4
        
        li s3,0
        lw s8, 0(a1)
        addi sp,sp,-4
        sw a1, 0(sp)
        addi sp,sp,-4
        sw a0, 0(sp)
        
        li a7,0
bubble_loop:
        addi sp,sp,-4
        sw a0, 0(sp)
        jal ra, bubbleSort
        addi a7,a7,1
        blt a7,s8,bubble_loop
        lw a0,0(sp)
        addi sp,sp,4
        lw a1,0(sp)
        addi sp,sp,4
       
       addi sp,sp,-4
        sw a1, 0(sp)
        addi sp,sp,-4
        sw a0, 0(sp)
        
        la a1,text2
        li a0,4
        ecall
        
        lw a0,0(sp)
        addi sp,sp,4
        lw a1,0(sp)
        addi sp,sp,4
        
        lw a1, 0(a1)
        jal ra, print_array
        
        li a0,10
        ecall
        
    bubbleSort:

        lw t0, 0(a0)
        addi s9,a0,4
        lw t1, 0(s9)
        bge t0,t1,swap
     go_back:
        
        addi a0,a0,4
        addi s3,s3,1
        bge s3,s8,end_round
        jal x0, bubbleSort
        
        
    end_round:
        lw a0,0(sp)
        addi sp,sp,4
        ret
    swap:
        lw t5, 0(a0)
        lw t6, 0(s9)
        sw t6, 0(a0)
        sw t5, 0(s9)
        jal x0,go_back
        
        
    
    print_array:
        li s2, 0
        add s6,x0,a1
        li a1, 123
        addi sp,sp,-4
        sw a0, 0(sp)
        li a0,11
        ecall
        lw a0, 0(sp)
        addi sp,sp,4
        addi sp,sp,-4
        sw ra, 0(sp)
        add s5,x0,a0
        jal ra, start_printing
        lw ra, 0(sp)
        addi sp,sp,4
        li a1,0x7d
        li a0,11
        ecall
        li a1,0x0d
        li a0,11
        ecall
        ret
    start_printing:
        bge s2,s6,end_printing
        lw a1, 0(s5)
        li a0, 1
        ecall
        addi s2,s2,1
        li s4,4
        add s5,s5,s4
        li a1,0x2c
        li a0,11
        ecall
        jal x0, start_printing
    end_printing:
    ret