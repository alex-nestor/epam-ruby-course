def compare_strings(s1, s2)
  s1 = validate(s1)
  s2 = validate(s2)
  res = check(s1, s2)
end

def get_input
  puts 'Please, enter the string'
  str = gets.chomp.upcase
end

def validate(str)
  if str.nil?
    puts 'Your string was converted into an empty string.'
    str = ''
  elsif /^[A-Za-z]*$/.match(str)
    puts 'Everything is allright!'
  else
    puts 'Your string was converted into an empty string.'
    str = ''
  end
  str
end

def check(str1, str2)
  sum1 = 0
  sum2 = 0
  str1.each_byte { |c| sum1 += c }
  str2.each_byte { |c| sum2 += c }
  sum1 == sum2
end

str1 = get_input
str2 = get_input
result = compare_strings(str1, str2)
puts result
