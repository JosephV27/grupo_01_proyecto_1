include c:\Irvine\Irvine32.inc
includelib c:\Irvine\Irvine32.lib
includelib c:\Irvine\Kernel32.lib
includelib c:\Irvine\user32.lib
include multiplicacion.inc
; ------------------------------------------------------
; Estudiantes: 
;				Joseph Valenciano
;				Erick Blanco 
;				Emmanuel Murillo 
; ------------------------------------------------------

TITLE Procedimiento para pedir numeros

.data
multiplicando DWORD ?
multiplicador DWORD ?
str1 BYTE "Ingrese el primer numero a multiplicar: ", 10, 13, 0
str2 BYTE "Ingrese el segundo numero a multiplicar: ", 10, 13, 0

.code 
PedirNumeros PROC
xor eax, eax ; -----------------------------------------------------
xor ebx, ebx ;  clear all the registers
xor ecx, ecx ;
xor edx, edx ;------------------------------------------------------

mov edx, offset str1 ; move the ubication memory of string to edx
call writestring ; write the string in console
call readint ; save the input
mov multiplicando, eax ; move the input to multiplicando
mov ebx, eax ; mov multiplicando to ebx
INVOKE ValidarEntero, ebx ; number validation

mov edx, offset str2 ; move the ubication memory of string to edx
call writestring ; write the string in console
call readint ; save the input
mov multiplicador, eax ; move the input to multiplicador 
INVOKE ValidarEntero, eax ; number validation

ret
PedirNumeros ENDP
END 