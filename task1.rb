# Є масив з довільними числами. Зробіть так, щоб елемент повторився в масиві таку кількість разів яка відповідає його числу.
# Приклад: [1, 3, 2, 4] перетворюється в [1, 3, 3, 3, 2, 2, 4, 4, 4, 4].

def modify(arr)
  res = []
  # arr.map { |el| el.to_s.split('') * el }
  arr.map { |el| el.times { res << el } }
  res
end

arr = []
5.times do
  arr << rand(1..5)
end
puts arr.to_s

puts (modify arr).to_s
