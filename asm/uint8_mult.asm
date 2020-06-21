include c:\Irvine\Irvine32.inc
includelib c:\Irvine\Irvine32.lib
includelib c:\Irvine\Kernel32.lib
includelib c:\Irvine\user32.lib
 
 INCLUDE multiplicacion.inc

.data
multiplicando DWORD ?
contador DWORD 0 
resultado DWORD 0

.code 
uint8_mult PROC,
    ptrArreglo:PTR DWORD ; apuntador al arreglo

push esi 

xor eax, eax
xor ebx, ebx
xor ecx, ecx
xor edx, edx

mov esi,ptrArreglo

mov ebx, [esi] ; agrega a ebx el primer numero del arreglo
mov eax, [esi+4] ; agrega a eax el segundo el numero del arreglo

mov multiplicando, ebx
mov ecx, contador 
    .while (ecx < 8) 
        SHR eax, 1
        JNC L2

        L1:
            xor ebx, ebx
            mov ebx, multiplicando 
            SHL ebx, ecx
            add resultado, ebx
            mov edx, resultado

       L2: 
           NOP
     inc ecx     
    .ENDW 
call  DumpRegs ; muestra los registros 
uint8_mult ENDP 
END