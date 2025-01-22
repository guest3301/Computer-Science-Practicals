"""
There are 5 types of operators as follows;
"""
import json
# Arithmetic 
print("Arithmetics")
a = int(input("Enter a number: "))
b = int(input("Enter another number: "))
print("Arithmetic Operations:")
print(f"a + b = {a + b}")
print(f"a - b = {a - b}")
print(f"a * b = {a * b}")
print(f"a / b = {a / b}")
print(f"a // b = {a // b}")
print(f"a % b = {a % b}")
print(f"a ** b = {a ** b}")

# Comparison
print("\nComparison")
print(f"a == b: {a == b}")
print(f"a != b: {a != b}")
print(f"a > b: {a > b}")
print(f"a < b: {a < b}")
print(f"a >= b: {a >= b}")
print(f"a <= b: {a <= b}")

# Logical 
x = bool(input("Enter a boolean value (True/False): "))
y = bool(input("Enter another boolean value (True/False): "))

print("\nLogical Operators:")
print(f"x and y: {x and y}")
print(f"x or y: {x or y}")
print(f"not x: {not x}")

# Bitwise 
print("Bitwise operation: ")
p = int(input("Enter a number: "))
q = int(input("Enter another number: "))
print("\nBitwise Operators:")
print(f"p & q = {p & q}")
print(f"p | q = {p | q}")
print(f"p ^ q = {p ^ q}")

# Assignment
print("Assignment operation") 
c = int(input('Assign me an integer value: '))
print("\nAssignment Operators:")
increment = int(input('Increment by (only Integer): '))
c += increment
print(f"c += {increment}: {c}")
decrement = int(input('Decrement by (only Integer): '))
c -= decrement
print(f"c -= {decrement}: {c}")

print("\nSo you're here to sum two integers")
z = []
a = int(input("Enter a number to sum: "))
b = int(input("Enter another number to sum: "))
z.append(a)
z.append(b)
print(f"{a} + {b} = {sum(z)}")

def isEven(x):
    x = int(x)
    if (x % 2) == 0:
        return f"{x} is even."
    else:
        return f"{x} is odd."

x = input("Enter an integer number to check if it's odd or even: ")
print(isEven(x))