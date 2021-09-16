# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length() == 0 # 0 elements
    return 0
  elsif arr.length() == 1 # 1 elements
    return arr[0]
  else # everything else
    max_arr = arr.max(2)
    return max_arr[0] + max_arr[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length() < 2 # 0 elements
    return false
  else # everything else
    return arr.combination(2).any? {|x, y| x + y == n }
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0 # if string is empty
    return false
  end
  
  if ['a', 'e', 'i', 'o', 'u'].include? s[0].downcase # if it starts with a vowel
    return false
  else
    return s[0].downcase.match?(/[A-Za-z]/) # if it does not start with a vowel and is a letter
  end
      
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # check the remainder after dividing
  # if 0 then true else false
  if /^[01]+$/.match(s) # if binary
    return s.to_i(2) % 4 == 0 ? true : false # if multiple of 4
  else # not a binary number then false
    return false
  end
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  # getters and setters
 attr_reader :isbn, :price

  def isbn= (isbn)
    if isbn.length == 0 # if string is empty
      raise ArgumentError.new("Error: No ISBN")
    end
    @isbn = isbn
  end

  def price= (price)
    price = price.to_f
    if price <= 0 # Can't be negative
      raise ArgumentError.new("Error: No Negative Prices")
    end
    @price = price
  end
  
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end
  
  def price_as_string
    # 5     | 20     | 5.8    | 20.1   | 20.11  | 20.00
    # $5.00 | $20.00 | $ 5.80 | $20.10 | $20.11 | $20.00
    if price.to_s.length == 5 # only thing it needs is a $
      return "$" + price.to_s
    else # all other cases only need $ and one 0 at the end
      return "$" + price.to_s + "0"
    end
    # if price % 1 == 0 # if whole number
    #   return "$" + price.to_s + "0"
    # else
    #   return "$" + price.to_s + "0"
    # end
  end
end