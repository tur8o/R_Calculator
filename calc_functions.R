#Calculator functions

#1 - addition
addition <- function(x, y) {
  return(x + y)
}

#2 - subtraction
subtraction <- function(x, y) {
  return(x - y)
}

#3 - division
division <- function(x,y) {
  if(y == 0){ #cannot divide by zeror
    return ("Error! Cannot divide by zero!")
  } else {
    return(x/y)
  }
}

#4 - multiplication
multiplication <- function(x, y) {
  return(x * y)
}

#5 - exponent
exponent <- function(x,y) {
  return(x^y)
}

#6 - square root
square_root <-function(x) {
  if(x < 0){ #cannot find square root of negative number
    return ("Error! Number needs to be greater than or equal to zero!")
  } else {
    return (sqrt(x))
}

#7 - tangent 
tan <- function(x) {
  if(x %% 180 ==0){
    return (0)
  } else if(x%% 90 ==0){
    return ("Error!")
  } else {
    return (tan(x*pi/180))
  }
}

#8 - sine
sine <- function(x) {
  return(sin(x*pi/180))
}

#9 - cosine
cosine <- function(x) {
  return(cos(x*pi/180))
}

#10 - factorial
factorial <- function(x){
  if(x < 1){ #number needs to be a positive whole number
    return ("Error! Number needs to be greater than or equal to zero!")
  } 
  else {
   y <- 1
   for(i in 1:x){
     y <-y*((1:x)[i])
   }
   return(y)
  }
}



