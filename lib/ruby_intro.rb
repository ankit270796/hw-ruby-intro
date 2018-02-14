# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  result=0
    array.each do |x|
         result+=x
    end
    return result 
end


def max_2_sum(array)
  if array.length<=1
    return sum(array)
  else
    array.sort!
    result=0
    (-2..-1).each do |x|
      result+=array[x]
    end
    return result 
  end
end

def sum_to_n?(array, n)
  result = false
  if array.length>=2
    (0...array.length).each do |x|
       ((x+1)...array.length).each do |y|
          if (array[x]+array[y])==n
            result = true
          end
       end
    end
  end
  return result
end


# Part 2

def hello(name)
  return "Hello, #{name}"
end


def starts_with_consonant?(str)
 if str.length>0
   consonants="bcdfghjklmnpqrstvwxyz"
   first_letter=str[0].downcase
   if consonants.count(first_letter)==1
     return true
   else
     return false
   end
 else
   return false
 end
end


def binary_multiple_of_4?(bin_str)
  result = false
  if bin_str.length == bin_str.count("0")+bin_str.count("1")
    number=bin2decimal(bin_str)
    if number%4==0
      return true
    end
  else
      return "#{bin_str} is not a valid binary number!"
  end
end
  
def bin2decimal(bin_str)
   result=0
   length=bin_str.length
  (1..bin_str.length).each do |x|
    result+=(bin_str[length-x].to_i)*(2**(x-1))
  end
  return result
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn,price)
    unless isbn.size>0 
      raise ArgumentError.new("Error1: Empty ISBN String")
    end
    
    unless price>0
      raise ArgumentError.new("Error2: Price Can't be negative or zero")
    end
  @isbn=isbn
  @price=price 
  end
  
  def price_as_string
    answer = sprintf('%.2f', @price)
    return "$"+answer
  end
end

