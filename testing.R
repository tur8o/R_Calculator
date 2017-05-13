#Calculator testing

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

#3 - multiplication
multiplication(3,3)
multiplication(4,3)
multiplication(3,6)
multiplication(3,-1)

#4 - exponent
exponent(1,3)
exponent(1,-1)
exponent(1,0)
exponent(3,4)

#5 - square_root
square_root(4)
square_root(0)
square_root(-1)

tan <- function(x) {
  if(x %% 180 ==0){
    return (0)
  } else if(x%% 90 ==0){
    return ("Error!")
  } else {
    return (tan(x*pi/180))
  }
}

tan(5)

sin <- function(x) {
  return(sin(x*pi/180))
}

sin(34)

cos <- function(x) {
  return(cos(x*pi/180))
}

cos(76)

factorial <- function(x){
  y <- 1
  for(i in 1:x){
    y <-y*((1:x)[i])
  }
  return(y)
}

factorial()