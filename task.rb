num = rand(100_000..999_999).to_s
puts num

def check(num)
  first = num[0..2]
  second = num[3..6]
  sum1 = first.split('').reduce { |_sum = 0, el| _sum.to_i + el.to_i }
  sum2 = second.split('').reduce { |_sum = 0, el| _sum.to_i + el.to_i }
  if sum1 == sum2
    puts 'так'
  else
    puts 'ні'
  end
end

check(num)
