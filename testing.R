#Calculator testing

#import functions
setwd("C:/Users/robert.farrell/Desktop/R Calculator")
source("calc_functions.R")

#1 - addition
addition(2,1)
addition(4,4)
addition(4,-12)


#2 - subtraction
subtraction(3,1)
subtraction(-1,1)
subtraction(-12,0)

#3 - division
division(3,1)
division(1,3)
division(3,0)
division(4,5)

#4 - multiplication
multiplication(3,3)
multiplication(4,3)
multiplication(3,6)
multiplication(3,-1)

#5 - exponent
exponent(1,3)
exponent(1,-1)
exponent(1,0)
exponent(3,4)

#6 - square_root
square_root(4)
square_root(0)
square_root(-1)

#7 - tangent
tan(5)
tan(-6)
tan(0)
tan(32)

#8 - sine
sine(34)
sine(-26)
sine(0)
sine(1)

#9 - cosine
cosine(34)
cosine(-26)
cosine(0)
cosine(1)

#10 - factorial 
factorial(10)
factorial(11)
factorial(-6)
factorial(0)