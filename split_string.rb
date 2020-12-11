# Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

# Examples:

# solution('abc') # should return ['ab', 'c_']
# solution('abcdef') # should return ['ab', 'cd', 'ef']

def solution(str)
  return [] if str == ''

  arr = str.chars.each_slice(2).to_a.map(&:join)
  arr[-1] = arr[-1].concat('_') if arr[-1].length == 1
  arr
end
