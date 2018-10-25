#write your code here
def add a, b
    a + b
end

def subtract a, b
    a - b
end

def sum numbers
    numbers.inject(0) {|sum, i| sum + i}
end

def multiply numbers
    numbers.inject(1) {|product, i| product * i}
end

def power a, b
    a ** b
end

def factorial a
    (1..a).inject(:*) || 1
end