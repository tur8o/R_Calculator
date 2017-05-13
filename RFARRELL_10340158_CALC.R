#Building a simple calculator in R Script

#get functions
setwd("C:/Users/robert.farrell/Desktop/R Calculator")
source("calc_functions.R")

#user Menu
print("******Simple Calculator Program******")
print("What would you like to do today? Please select a number: ")
print("1. Addition")
print("2. Subtraction")
print("3. Multiplication")
print("4. Division")
print("5. Exponentiation")
print("6. Square Root")
print("7. Sine")
print("8. Cosine")
print("9. Tan")
print("10. Factorial")
print("*NOTE: Numbers 1-5 take 2 inputs and 6-10 only take one.")

#repeat, similar to while loop until user enters 1-10
repeat {

  #define user choice
  choice = as.integer(readline(prompt="Enter choice[1/2/3/4/5/6/7/8/9/10]: "))
  
  print("Please follow the instructions")
  
  #action choice
  if(choice >=1 && choice <= 5) {
    num1 = as.numeric(readline(prompt="Enter your first number: "))
    num2 = as.numeric(readline(prompt="Enter your second number: "))
    
    operator <- switch(choice,"+","-","*","/","^")
    
    result <- switch(choice, addition(num1, num2), subtraction(num1, num2), multiplication(num1, num2), division(num1, num2), exponent(num1, num2))
    
    print("END OF PROGRAM: See results below")
    print(paste(num1, operator, num2, "=", result))
    break
  } else if(choice >= 6 && choice <= 10) {
    num3 = as.numeric(readline(prompt="Enter number: "))
    
    operator2 <- switch(choice,"!","Cosine","Sine","Tangent","Square Root")
    
    result1 <- switch(choice, factorial(num3), cosine(num3), sine(num3), tan(num3), square_root(num3))
    
    print("END OF PROGRAM: See results below")
    print(paste(num3, operator2, "=", result1))
    break
  } else {
    print("Error! You need to enter a number between 1 and 10")
    #error repeat process
  }

}
