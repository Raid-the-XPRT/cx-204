.data 
    val: .string "qamar"
    
.text
    main:
        li x3,'r'
        li x4,'R'
        
        sub x5,x3,x4
        
        li a0,4
        
        la a1, val
        ecall
        
        lb x2, 0(a1)
        sub x2,x2,x5
        sb x2,0(a1)
        
        lb x2, 1(a1)
        sub x2,x2,x5
        sb x2,1(a1)
        
        lb x2, 2(a1)
        sub x2,x2,x5
        sb x2,2(a1)
        
        lb x2, 3(a1)
        sub x2,x2,x5
        sb x2,3(a1)
        
        lb x2, 4(a1)
        sub x2,x2,x5
        sb x2,4(a1)
        ecall
        