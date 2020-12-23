# Є рядок наступного вигляду: 4 літери, потім пробіл, потім ще 4 літери. Наприклад, такий рядок 'ФЫВА олдж'. Треба перетворити на наступний рядок 'АВЫФ ждло'. !!!! UTF-8

def reverse_words(str)
  str.encode!('utf-8') unless str.encoding == 'UTF-8'
  str.split(' ').map! { |w| w.reverse }.join(' ')
end

puts reverse_words 'ФЫВА олдж'
