# 5. You need to find out a unique value in array, you are given arrays:
# - [ 1, 1, 1, 2, 1, 1 ] => 2
# - [ 0, 0, 0.55, 0, 0 ] => 0.55
# - [3,1,5,3,7,4,1,5,7] => 4

def find_unique(arr)
  arr.each do |el|
    return el if arr.count(el) == 1
  end
end

puts find_unique [1, 1, 1, 2, 1, 1]
puts find_unique [0, 0, 0.55, 0, 0]
puts find_unique [3, 1, 5, 3, 7, 4, 1, 5, 7]
