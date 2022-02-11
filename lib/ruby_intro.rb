# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each { |a| sum+= a }
  return sum
end

def max_2_sum arr
  len = arr.length
  if len == 0
    return 0
  elsif len == 1
    return arr[0]
  else
    max_largest = -1.0/0.0
    max_2nd_largest = -1.0/0.0
    for val in arr
      if val >= max_2nd_largest
        if val >= max_largest
          max_2nd_largest = max_largest
          max_largest = val
        else
          max_2nd_largest = val 
        end
      end
    end
    return max_largest + max_2nd_largest
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  dict = {}
  for val in arr
    complement = n - val 
    if dict.has_key? complement
      return true
    else
      dict[val] = 1
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
  s = s.downcase
  result = /^[^aeiou].*/ =~ s  
  if result.nil? 
    return false
  else
    is_letter = /^[\w].*/ =~ s
    if is_letter.nil?
      return false 
    else
      return true
    end
  end 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # check if not binary
  condition = /[^01]+/ =~ s
  if not condition.nil?
    return false
  else
    multiple_of_4 = /0$/ =~ s 
    if multiple_of_4.nil?
      return false 
    else
      return true
    end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.length() == 0 || price <= 0
      raise ArgumentError.new("Invalid argument(s)")
    end
    @isbn = isbn
    @price = price 
  end

  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    return format("$%.2f", @price)
  end

end
