include c:\Irvine\Irvine32.inc
includelib c:\Irvine\Irvine32.lib
includelib c:\Irvine\Kernel32.lib
includelib c:\Irvine\user32.lib
 

.data 
num1 BYTE 123
num2 BYTE 36
contador BYTE 0 
resultado WORD 0

.code 
main PROC
call DumpRegs;
xor eax, eax
xor ebx, ebx
xor ecx, ecx
xor edx, edx
mov al, num2
mov cl, contador 
call DumpRegs;
    .while (cx < 8) 
        SHR ax, 1 ;  0100 CF = 1
        call DumpRegs;
        JNC L2

        L1:
            xor ebx, ebx
            mov bl, num1 
            call DumpRegs;
            SHL bx, cl 
            call DumpRegs;
            add resultado, bx
            mov dx, resultado
            call DumpRegs;

       L2: 
           NOP
     inc cx      
    .ENDW 
call  DumpRegs ; muestra los registros 
exit 
main ENDP 
END main