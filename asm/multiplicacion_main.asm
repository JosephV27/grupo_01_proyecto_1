include c:\Irvine\Irvine32.inc
includelib c:\Irvine\Irvine32.lib
includelib c:\Irvine\Kernel32.lib
includelib c:\Irvine\user32.lib

INCLUDE multiplicacion.inc
Tam_Arreglo = 2

.data
str1 BYTE "Ingrese un numero a multiplicar:  ", 10, 13, 0
Arreglo DWORD Tam_Arreglo DUP(?)

.code 
main PROC 
	call Clrscr 

	INVOKE PedirNumeros, ADDR str1, ADDR Arreglo, Tam_Arreglo
	INVOKE uint8_mult, ADDR Arreglo

	 call Crlf 
	 exit
main ENDP
END main