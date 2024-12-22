.data
    array_start: .word 
    i_size: .byte 100
    
.text
    la t0, i_size
    lb t1, 0(t0)
    li t2, 0
    
    la t3, array_start
    
    li t4,4 #integer size

for_loop:
    bgeu t2, t1, break
    sw t2, 0(t3)
    add t3,t3,t4
    addi t2,t2, 1
    jal x0,for_loop
break:
    li a0,10
    ecall