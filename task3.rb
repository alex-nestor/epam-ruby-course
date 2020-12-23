# Є масив a = [342, 55, 33, 123, 66, 63, 9]; - потрібно вивести на екран тільки ті числа в яких є '3'
def print_numbers(arr)
  arr.select { |e| /3/.match(e.to_s) }.join(', ')
end

a = [342, 55, 33, 123, 66, 63, 9]
puts print_numbers a
