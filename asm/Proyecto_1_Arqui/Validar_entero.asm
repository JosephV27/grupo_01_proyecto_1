include c:\Irvine\Irvine32.inc
includelib c:\Irvine\Irvine32.lib
includelib c:\Irvine\Kernel32.lib
includelib c:\Irvine\user32.lib
include multiplicacion.inc
; ------------------------------------------------------
; Students: 
;				Joseph Valenciano
;				Erick Blanco 
;				Emmanuel Murillo 
; ------------------------------------------------------

; ------------------------------------------------------
; input: Number to validate
; output: The number or the error message			
; ------------------------------------------------------

TITLE Procedimiento para validar numero 8 bits

.data
error BYTE "El numero que ingreso no esta contemplado entre el 0 y el 255", 10, 13, 0

.code 
ValidarEntero PROC, num: DWORD 
mov eax, num

.IF eax > 255 || eax < 0 ; check if the first number is between 0 and 255
mov edx, offset error ; move the ubication memory of string to edx
call writestring ; write the string in console
invoke main ; call the proc again
.ENDIF 

ret
ValidarEntero ENDP
END 