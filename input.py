number = i(inp("Ingrese un número según la operación que desee hacer:\n1)Suma.\n2)Resta.\n3)Multiplicación.\n4)División.\n"))
firstNumber = i(inp("Ingrese el primer número: "))
secondNumber = i(inp("Ingrese el segundo número: "))
if number == 1:
    p("El resultado es:",firstNumber+secondNumber)
el number == 2:
    p("El resultado es:",firstNumber-secondNumber)
el number == 3:
    p("El resultado es:",firstNumber*secondNumber)
e:
    if secondNumber == 0:
        p("Indefinido")
    e:
        p("El resultado es:",firstNumber/secondNumber)