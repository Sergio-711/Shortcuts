number = int(input("Ingrese un número según la operación que desee hacer:\n1)Suma.\n2)Resta.\n3)Multiplicación.\n4)División.\n"))
firstNumber = int(input("Ingrese el primer número: "))
secondNumber = int(input("Ingrese el segundo número: "))
if number == 1:
   print("El resultado es:",firstNumber+secondNumber)
elif number == 2:
   print("El resultado es:",firstNumber-secondNumber)
elif number == 3:
   print("El resultado es:",firstNumber*secondNumber)
else:
    if secondNumber == 0:
       print("Indefinido")
    else:
       print("El resultado es:",firstNumber/secondNumber)