include c:\Irvine\Irvine32.inc
includelib c:\Irvine\Irvine32.lib
includelib c:\Irvine\Kernel32.lib
includelib c:\Irvine\user32.lib
include multiplicacion.inc

.code
output BYTE "El resultado de la multiplicacion es: ", 10, 13, 0

Mostrar_Resultado PROC, resultado: DWORD
	mov eax, resultado
	mov edx, offset output ; move the ubication memory of string to edx
	call writestring ; write the string in console
	call writeint ; return the output in console
	ret
Mostrar_Resultado ENDP
END