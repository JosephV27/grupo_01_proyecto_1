include c:\Irvine\Irvine32.inc
includelib c:\Irvine\Irvine32.lib
includelib c:\Irvine\Kernel32.lib
includelib c:\Irvine\user32.lib
include multiplicacion.inc

.data
num1 DWORD ?
num2 DWORD ?
str1 BYTE "Ingrese el primer numero a multiplicar: ", 10, 13, 0
str2 BYTE "Ingrese el segundo numero a multiplicar: ", 10, 13, 0
str3 BYTE "El numero que ingreso no esta contemplado entre el 0 y el 255", 10, 13, 0

.code 
Pedir_Validar_Numeros PROC
xor eax, eax
xor ebx, ebx
xor edx, edx
call  DumpRegs
mov edx, offset str1 
call writestring
call readint
mov num1, eax
mov ebx, eax

.IF ebx > 255 || ebx < 0
mov edx, offset str3
call writestring
invoke Pedir_Validar_Numeros
.ENDIF

call  DumpRegs
mov edx, offset str2
call writestring
call readint
mov num2, eax

.IF eax > 255 || eax < 0
mov edx, offset str3
call writestring
invoke Pedir_Validar_Numeros
.ENDIF
ret
call  DumpRegs ; show the registers 
Pedir_Validar_Numeros ENDP
END 