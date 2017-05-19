#functions for part 5B

add = lambda x,y : x+y

print add(1,1)

def fahrenheit(t):
    return ((float(9)/5)*t + 32)
def celsius(t):
    return (float(5)/9*(t - 32))

temp = (36.5, 37, 37.5, 39)

F = map(fahrenheit, temp)
print F

C = map(celsius, F)
print C

a = [1,2,3,4]
b = [17,12,11,10]
c = [-1, -4, 5, 9]

print map(lambda x,y:x+y, a,b)
print map(lambda x,y,z:x+y+z, a,b,c)
print map(lambda x,y,z:x+y-z, a,b,c)

fib = [0,1,1,2,3,5,8,13,21,34,55]
result = filter(lambda x: x % 2, fib)
print result

result = filter(lambda x: x % 2 == 0, fib)
print result

print reduce(lambda x, y: x+y, [47, 11, 42, 13])

max = lambda a,b: a if (a>b) else b
print reduce(f, [47, 11, 42, 13]) 

list = [47, 0, 42, 1]

def max(values):
	return reduce(lambda a,b: a if (a>b) else b, values)
	
print max(list)

def min(values):
	return reduce(lambda a,b: a if (a<b) else b, values)
	
print min(list)

def add(values):
	return reduce(lambda a,b: a+b, values)
	
print add(list)

def sub(values):
	return reduce(lambda a,b: a-b, values)
	
print sub(list)

def mult(values):
	return reduce(lambda a,b: a*b, values)
	
print mult(list)

def divide(values):
	return reduce(lambda a,b:a/float(b) if (b!= 0 and a!='Not available shite!') else 'Not available shite!', values)
	
print divide(list)

def is_even(values):
	return filter(lambda a: a % 2 == 0, values)
	
print is_even(list)

def is_odd(values):
	return filter(lambda a: a % 2, values)
	
print is_odd(list)

def fahrenheit(t):
    return ((float(9)/5)*t + 32)
def celcius(t):
    return (float(5)/9*(t - 32))

temp = (36.5, 37, 37.5, 39)

F = map(fahrenheit, temp)
print F

C = map(celcius, F)
print C

def to_celcius(values):
	return map(celcius, values)
	
print to_celcius(list)

def to_fahrenheit(values):
	return map(fahrenheit, values)
	
print to_fahrenheit(list)

print reduce(lambda x,y : x+y, range(1,101))

def sum(to):
	return reduce(lambda x,y : x+y, range(1,to+1))

print sum(100)

Celsius = [39.2, 36.5, 37.3, 37.8]
Fahrenheit = map(lambda x: (float(9)/5)*x + 32, Celsius)
print Fahrenheit

my_list = [fahrenheit(x) for x in Celsius]

print my_list

print [(x,y,z) for x in range(1,30) for y in range(x,30) for z in range(y,30) 
		if x**2 + y**2 == z**2]
		
pyt_triples = []

colours = [ "red", "green", "yellow", "blue" ]
things = [ "house", "car", "tree" ]
coloured_things = [ (x,y) for x in colours for y in things ]
print coloured_things

def city_generator():
    yield("Konstanz")
    yield("Zurich")
    yield("Schaffhausen")
    yield("Stuttgart")

x = city_generator()
print x.next()

print x.next()

print x.next()

print x.next()

cities = city_generator()
for city in cities:
	print city
	
def get_triplets(n):
	for x in range(1,n):
		for y in range(x,n):
			for z in range(y,n):
				if x**2 + y**2 == z**2:
					yield(x,y,z)
					
triplets = get_triplets(3000)
for triplet in triplets:
	print triplet,
	
def fibonacci(n):
    """Fibonacci numbers generator"""
    a, b = 0, 1
    while True:
        yield a
        a, b = b, a + b

f = fibonacci(5)
for x in f:
	print x,
print
