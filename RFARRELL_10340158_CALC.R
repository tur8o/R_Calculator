#Building a simple calculator in R Script

source("calc_functions.R")

#User Menu
print("******Simple Calculator Program******")
print("What would you like to do today? Please select a number: ")
print("1. Add")
print("2. Subtract")
print("3. Multiply")
print("4. Divide")
print("5. Exponentiate")
print("6. Square Root")
print("7. Sine")
print("8. Cosine")
print("9. Tan")
print("10. Factorial")
print("*NOTE: Numbers 1-5 take 2 inputs and 6-10 only take one.")

#define user choise
choice = as.integer(readline(prompt="Enter choice[1/2/3/4/5/6/7/8/9/10]: "))

print("Please follow the instructions")

#action choice
if(choice >=1 | choice <= 5) {
  num1 = as.numeric(readline(prompt="Enter your first number: "))
  num2 = as.numeric(readline(prompt="Enter your second number: "))
  operator <- switch(choice,"+","-","*","/","^")
  result <- switch(choice, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2), exponent(num1, num2))
  print(paste(num1, operator, num2, "=", result))
} else if(choice >= 6 | choice <= 10) {
  num3 = as.numeric(readline(prompt="Enter number: "))
  operator2 <- switch(choice,"!","Cosine","Sine","Tangent","Square Root")
  result1 <- switch(choice, factorial(num3), cosine(num3), sine(num3), tan(num3), square_root(num3))
  print(paste(num3, operator2, "=", result1))
} else {
  print("Error! You need to enter a number between 1 and 10")
}
