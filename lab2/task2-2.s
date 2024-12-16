.text
    main:
        li x5,0x12345678
        
        add a1,x0,x5
        li a0,1
        ecall
        li a0,10
        ecall