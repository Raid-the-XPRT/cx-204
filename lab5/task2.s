.data
    result  : .word 1
    n       : .word 5
.text
    main:
        la s2, result # the address of result is in s2
        la s3, n
        lw s3, 0(s3) # the value of n is in s3
        addi s3,s3,1 # add 1 to n
        
        li s4, 1 # initiate i
        li s5, 0 # initiate temp_res
        
        jal ra, calc_factorial
        
        lw a1, 0(s2)
        li a0, 1
        ecall
        li a0, 10
        ecall
        
    calc_factorial:
        lw s5, 0(s2)
        mul s5, s5, s4
        sw s5, 0(s2)
        addi s4,s4,1
        blt s4,s3,calc_factorial 
        ret
        
   