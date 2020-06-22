include c:\Irvine\Irvine32.inc
includelib c:\Irvine\Irvine32.lib
includelib c:\Irvine\Kernel32.lib
includelib c:\Irvine\user32.lib
include multiplicacion.inc

.data
num1 DWORD ?
num2 DWORD ?

.code 
main PROC 
	call DumpRegs
	INVOKE Pedir_Validar_Numeros
	mov num1, ebx
	call DumpRegs
	mov num2, eax
	call DumpRegs

	INVOKE ExitProcess, 0
main ENDP
END main