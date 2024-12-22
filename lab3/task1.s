.data
    value1: .word 0x87654321
    value2: .word 0x12345678
.text
    main:
    li x1, 0x10000000
    la x2, value1
    lw x3, 0(x2)
    sw x3, 0(x1)
    li x1, 0x10000004
    la x2, value2
    lw x3, 0(x2)
    sw x3, 0(x1)
    
    
    li x1,0x10000000
    lw x5,0(x1)
    li x1,0x10000004
    lw x6,0(x1)
    
    
    li x1,0x10000008
    add x7,x5,x6
    sw x7, 0(x1)
    