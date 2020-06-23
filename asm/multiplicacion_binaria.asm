include c:\Irvine\Irvine32.inc
includelib c:\Irvine\Irvine32.lib
includelib c:\Irvine\Kernel32.lib
includelib c:\Irvine\user32.lib
include multiplicacion.inc

.data 
contador BYTE 0 
resultado DWORD 0

.code 
uint8_mult PROC, multiplicando:DWORD, multiplicador:DWORD
xor esi, esi
mov eax, multiplicador 
mov cl, contador 
    .while (ecx < 8)  ; check that contador be less than 8
        SHR eax, 1 ; make shift right to multiplicador 
        JNC L2 ; check if the carry flag is not active

        L1: 
            xor ebx, ebx ; clear ebx
            mov ebx, multiplicando 
            SHL ebx, cl ; make shift left to multiplicando with the number of contador
            add resultado, ebx ; add the result

       L2: 
           NOP
     inc ecx ; increase contador
    .ENDW 
mov edx, resultado
RET
uint8_mult ENDP 
END