.data
    equalStat: .string "Equal"
    not_equalStat: .string "Not Equal"
    
    
.text
    
    li x5, 5  #x=5
    li x6, 10 #y=10
    
    beq x5 ,x6 , showEqual
    jal x0, showNotEqual
    
    
showEqual:
    la a1,equalStat
    li a0, 4
    ecall
    jal x0, done
    
showNotEqual:
    la a1,not_equalStat
    li a0,4
    ecall
    
done:
