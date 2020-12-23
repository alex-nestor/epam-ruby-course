# Перетворити рядок 'var_test_text' в 'varTestText'

def camelize(str)
  str.split('_').reduce { |acc, el| acc + el.capitalize }
end

puts camelize 'var_test_text'
