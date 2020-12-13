def compare_strings(s1, s2)
  s1 = '' if s1.nil? || s1.match(/[^a-zA-Z]/)
  s2 = '' if s2.nil? || s2.match(/[^a-zA-Z]/)
  check(s1, s2)
end

def get_input
  puts 'Please, enter the string'
  str = gets.chomp
end

def check(str1, str2)
  sum1 = 0
  sum2 = 0
  str1.upcase.each_byte { |c| sum1 += c }
  str2.upcase.each_byte { |c| sum2 += c }
  sum1 == sum2
end

str1 = get_input
str2 = get_input
puts compare_strings(str1, str2)
