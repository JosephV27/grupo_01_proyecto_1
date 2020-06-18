def uint8_mult(num1, num2):
    num1, num2 = bin(num1), bin(num2)
    num2 = num2[::-1] # reverse the  binary list to order the index
    resultado = 0
    for i in range(len(num2)):
        if num2[i] == "1": # verify the active bits
            SHL = int(num1,2) << i #shift left
            resultado = resultado + SHL # sum the SHL results
    return bin(resultado)

#print(uint8_mult(8, 2))
# Así es más fácil seleccionar números
# Tiene nota de 5/5 en prototipo
mult_1 = 8
mult_2 = 2

resultado = uint8_mult(mult_1, mult_2)

print(int(resultado,2))

