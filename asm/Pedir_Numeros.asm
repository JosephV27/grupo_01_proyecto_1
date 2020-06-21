include c:\Irvine\Irvine32.inc
includelib c:\Irvine\Irvine32.lib
includelib c:\Irvine\Kernel32.lib
includelib c:\Irvine\user32.lib

INCLUDE multiplicacion.inc

.code 
PedirNumeros PROC,
	ptrIndicador:PTR BYTE, ; cadena de mensaje indicador
	ptrArreglo:PTR DWORD, ; apuntador al arreglo
	tamArreglo: DWORD 

pushad ; guarda todos los registros

mov ecx,tamArreglo
cmp ecx,0 ; ¿el tamaño del arreglo <= 0?jle L2 ; sí: termina
mov edx,ptrIndicador ; dirección del indicador
mov esi,ptrArreglo

L1: call WriteString ; muestra la cadena
	call ReadInt ; lee entero y lo coloca en EAX
	call Crlf ; avanza a la siguiente línea de salida
	mov [esi],eax ; lo almacena en el arreglo
	add esi,4 ; siguiente entero
	loop L1

L2: popad ; restaura todos los registros
	ret

PedirNumeros ENDP
END 