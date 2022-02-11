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
      print val
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
  # YOUR CODE HERE
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
