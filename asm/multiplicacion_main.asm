include c:\Irvine\Irvine32.inc
includelib c:\Irvine\Irvine32.lib
includelib c:\Irvine\Kernel32.lib
includelib c:\Irvine\user32.lib
include multiplicacion.inc

.data
multiplicando DWORD ?
multiplicador DWORD ?
resultado DWORD ?

.code 
main PROC 
	INVOKE Pedir_Numeros ; call the proc Pedir_Validar_Numeros
	mov multiplicando, ebx ; move the user input to multiplicando
	mov multiplicador, eax ; move the user input to multiplicador
	INVOKE uint8_mult, multiplicando, multiplicador ; call the proc uint8_mult
	mov resultado, edx ; mov the output of uint8_mult to resultado
	INVOKE Mostrar_Resultado, resultado ; call the proc Mostrar_Resultado_mult
	INVOKE ExitProcess, 0
main ENDP
END main