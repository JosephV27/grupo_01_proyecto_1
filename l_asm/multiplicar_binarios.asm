include c:\Irvine\Irvine32.inc
includelib c:\Irvine\Irvine32.lib
includelib c:\Irvine\Kernel32.lib
includelib c:\Irvine\user32.lib
 

.data 
num1 BYTE 123
num2 BYTE 36
contador BYTE 0 
resultado WORD 0
temp BYTE 0
.code 
main PROC  
mov aL, num2
mov cl, contador 
mov dx, resultado 
    .while (cl < 8) 
        SHR al, 1
        cmp al, 0
        JC L1 
        L1:
            mov bl, num1 
            SHL bl, cl ; cl = contandor, contador = 7 (SHL num1, 7)  
            mov temp, bl
            add dx, word ptr temp ; dx = resultado, resultado + (SHL num1, 5) 
    inc cx
    .ENDW
call  DumpRegs ; muestra los registros 
exit 
main ENDP 
END main