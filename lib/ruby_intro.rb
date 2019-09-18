# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  return 0 if arr.size == 0

  arr.each {|x| sum += x}
  return sum
end

def max_2_sum arr
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  end

  arr.sort!
  return arr[-1] + arr[-2]

end

def sum_to_n? arr, n
  if arr.size < 2
    return false
  end

  for i in arr do
    for x in arr do
      if i == x
        next
      elsif (x + i) == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return s.match?(/\A[^eaiou\W]/i)
end

def binary_multiple_of_4? s
  return false if s.match?(/[^1*0*]+|^\s*$/)
  return (s.to_i(10) % 4) == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError.new("Invalid ISBN") if isbn.length < 1
    @isbn = isbn
    raise ArgumentError.new("Invalid price") if price <= 0
    @price = price
  end

  def price_as_string
    sprintf("$%.2f", price)
  end


end
