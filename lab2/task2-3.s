.text 
    main:
    li x5,0x8
    li x6,0x1
    and x10,x5,x6
    
    
    add a1,x0,x10
    
    li a0,1
    ecall
    li a0,10
    ecall