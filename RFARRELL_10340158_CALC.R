#Building a simple calculator in R Script

addition <- function(x, y) {
  return(x + y)
}

addition(1,2)

subtraction <- function(x, y) {
  return(x - y)
}

subtraction(1,2)

division <- function(x,y) {
  if(y == 0){ #cannot divide by zeror
    return ("Error! Cannot divide by zero!")
  } else {
    return(x/y)
  }
}

division(1,2)
division(10,0)

multiplication <- function(x, y) {
  return(x * y)
}

multiplication(1,2)

exponent <- function(x,y) {
  return(x^y)
}

exponent(3,4)

square_root <-function(x) {
  if(x < 0){ #cannot find square root of negative number
    return ("Error! Number needs to be greater than or equal to zero!")
  } else {
  return (sqrt(x))
}

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

factorial(10)
