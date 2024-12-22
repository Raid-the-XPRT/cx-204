.data
    vector1: .byte 1,2,3,4,5,6,7,8
    vector2: .byte 9,10,11,12,13,14,15,16
    result : .byte
 .text
    la s2,vector1
    la s3,vector2
    la s4,result
    
    li t0,0
    li t1,8
    
    li t2,0
    li t3,0
    li t4,0
    
for_loop:
    bge t0,t1,for_loop_break
    lb t5, 0(s2)
    lb t6, 0(s3)
    add t6,t6,t5
    sb t6, 0(s4)
    addi s2,s2,1
    addi s3,s3,1
    addi s4,s4,1
    
    addi t0,t0,1
    jal x0,for_loop
    
for_loop_break:
    li a0,10
    ecall