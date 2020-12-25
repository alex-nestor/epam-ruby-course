# You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the
# integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.

# For example:

# Let's say you are given the array [1,2,3,4,3,2,1] - Your function will return the index 3, because at the 3rd position
# of the array, the sum of left side of the index ([1,2,3]) and the sum of the right side of the index ([3,2,1]) both equal 6.

# [1,100,50,-51,1,1] - Your function will return the index 1, because at the 1st position of the array, the sum of left
# side of the index ([1]) and the sum of the right side of the index ([50,-51,1,1]) both equal 1.

# You need to test the solution on the next arrays:

# [20,10,-80,10,10,15,35]
# [10,-80,10,10,15,35]

def find_index(arr)
  (0...arr.size).each do |i|
    sum_l = 0
    sum_r = 0
    arr.each_with_index do |num, index|
      if index < i
        sum_l += num
      elsif index > i
        sum_r += num
      end
    end
    return i if sum_l == sum_r
  end
  -1
end

puts find_index [20, 10, -80, 10, 10, 15, 35]
puts find_index [10, -80, 10, 10, 15, 35]

# puts "index #{i}"
#  sum_l = arr[0..arr[i - 1]].reduce(:+)
#  sum_r = arr[arr[i + 1]..(arr.size - 1)].reduce(:+)
#  puts sum_l, sum_r
#  return i if sum_l == sum_r
