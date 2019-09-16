# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  if arr.size == 0
    return 0
  end
  arr.each {|x| sum += x}
  return sum
end

def max_2_sum arr
  if arr.size == 0
    return 0
  end

  if arr.size == 1
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
      end
      if (x + i) == n
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
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
