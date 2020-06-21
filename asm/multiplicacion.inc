include c:\Irvine\Irvine32.inc
includelib c:\Irvine\Irvine32.lib
includelib c:\Irvine\Kernel32.lib
includelib c:\Irvine\user32.lib

PedirNumeros PROC,
	ptrIndicador:PTR BYTE, ; cadena de mensaje indicador
	ptrArreglo:PTR DWORD, ; apuntador al arreglo
	tamArreglo: DWORD 

uint8_mult PROC,
    ptrArreglo:PTR DWORD


