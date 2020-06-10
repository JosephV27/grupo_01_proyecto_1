def uint8_mult(bin1, bin2):
    bin2 = bin2[::-1] # reverse the list to order the index
    resultado = 0
    for i in range(len(bin2)):
        if bin2[i] == "1": # verify the active bits
            SHL = int(bin1,2) << i #shift left
            resultado = resultado + SHL # sum the SHL results
    return bin(resultado)
