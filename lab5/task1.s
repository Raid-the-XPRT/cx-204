.data
    array: .word 1,2,3,4,5,6,7,8,9
    result: .byte 
.text
    main:
        la s2, array        
        la s3, result        
        li s4, 9        
        li s5, 0
        li s7, 0
        jal ra, for_loop
        sw s7, 0(s3)
        lw a1, 0(s3)
        li a0, 1
        ecall
        li a0, 10   # exit
        ecall 
        
        
    for_loop:
        bge s5,s4 for_loop_break
        lw s6, 0(s2)
        add s7, s7, s6
        addi s2, s2, 4
        addi s5,s5, 1
        jal x0, for_loop
        
        
        
    for_loop_break: 
        ret # jalr ra
        
   