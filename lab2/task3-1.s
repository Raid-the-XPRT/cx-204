.text
    main:
        li x10,0b11
        li x5,00001000
        
        li x6,0x1
        sll x6,x6,x10
        xor x10,x10,x6
        