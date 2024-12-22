.data 
    value: .word 0x12345678

.text
    main:
        li x1,0x08
        
        la x2,value
        
        li x4,0x10000000
        li x8,0xffffffff
        
        lbu x5,0(x2)
        lw x6,0(x2)
        srl x6,x6,x1
        sw x6,0(x2)        
        sll x5,x5,x1
        
        lbu x7,0(x2)        
        or x5,x5,x7
        lw x6,0(x2)
        srl x6,x6,x1
        sw x6,0(x2)        
        sll x5,x5,x1
        
        lbu x7,0(x2)        
        or x5,x5,x7
        lw x6,0(x2)
        srl x6,x6,x1
        sw x6,0(x2)        
        sll x5,x5,x1
        
        lbu x7,0(x2)        
        or x5,x5,x7
        lw x6,0(x2)
        srl x6,x6,x1
        sw x6,0(x2)        
        
        sw x5,0(x4)