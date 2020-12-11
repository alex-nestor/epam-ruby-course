# Make a function that takes in a name (Any string two chars or longer really, but the name is the idea) and use the ascii values of it's substrings to produce the hex value of its color! Here is how it's going to work:

# The first two hexadecimal digits are the SUM of the value of characters (modulo 256).
# The second two are the PRODUCT of all the characters (again, modulo 256, which is one more than FF in hexadecimal).
# The last two are the ABSOLUTE VALUE of the DIFFERENCE between the first letter, and the sum of every other letter. (I think you get the idea with the modulo thing).
# For example "Jack" returns "79CAE5", which is... baby blue!

# "Jack"  #  "J" = 74, "a" = 97, "c" = 99, "k" = 107

# 74 + 97 + 99 + 107 = 377                   -->  mod 256 = 121  -->  hex: 79
# 74 * 97 * 99 * 107 = 76036554              -->  mod 256 = 202  -->  hex: CA
# 74 - (97 + 99 + 107) = -229  --> abs: 229  -->  mod 256 = 229  -->  hex: E5

# NOTE: The function should return None/nil when the input is less than two chars.

def string_color(name)
  return nil if name.length < 2

  color = ''
  arr = []
  name.each_byte { |c| arr << c }

  res = arr.reduce(:+) % 256
  res = validate(res.to_s(16).upcase)
  color += res

  res = arr.reduce(:*) % 256
  res = validate(res.to_s(16).upcase)
  color += res

  res = arr[0] - (arr.reduce(:+) - arr[0])
  res = res.abs % 256
  res = validate(res.to_s(16).upcase)
  color += res

  color
end

def validate(num)
  num = num.split('').unshift(0).join('') if num.size == 1
  num
end
