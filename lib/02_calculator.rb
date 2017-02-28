def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(array)
  array.inject(0) { |sum, arr| sum + arr }
end

def multiply(array)
 array.inject(:*)
end

def power(num, num1)
  num**num1
end

def factorial(num)
  if num <= 1
    1
  else
  num * factorial(num-1)
  end
end
