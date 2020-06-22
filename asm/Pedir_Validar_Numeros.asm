include c:\Irvine\Irvine32.inc
includelib c:\Irvine\Irvine32.lib
includelib c:\Irvine\Kernel32.lib
includelib c:\Irvine\user32.lib
include multiplicacion.inc

.data
multiplicando DWORD ?
multiplicador DWORD ?
str1 BYTE "Ingrese el primer numero a multiplicar: ", 10, 13, 0
str2 BYTE "Ingrese el segundo numero a multiplicar: ", 10, 13, 0
str3 BYTE "El numero que ingreso no esta contemplado entre el 0 y el 255", 10, 13, 0

.code 
Pedir_Validar_Numeros PROC
xor eax, eax ; -----------------------------------------------------
xor ebx, ebx ;  clear all the registers
xor ecx, ecx ;
xor edx, edx ;------------------------------------------------------

mov edx, offset str1 ; move the ubication memory of string to edx
call writestring ; write the string in console
call readint ; save the input
mov multiplicando, eax ; move the input to multiplicando
mov ebx, eax 

.IF ebx > 255 || ebx < 0 ; check if the first number is between 0 and 255
mov edx, offset str3 ; move the ubication memory of string to edx
call writestring ; write the string in console
invoke Pedir_Validar_Numeros ; call the proc again
.ENDIF 

mov edx, offset str2 ; move the ubication memory of string to edx
call writestring ; write the string in console
call readint ; save the input
mov multiplicador, eax ; move the input to multiplicador 

.IF eax > 255 || eax < 0 ; check if the second number is between 0 and 255
mov edx, offset str3 ; move the ubication memory of string to edx
call writestring ; write the string in console
invoke Pedir_Validar_Numeros ; call the proc again
.ENDIF

ret
Pedir_Validar_Numeros ENDP
END 