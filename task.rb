# frozen_string_literal: true

year = rand(2000..2021)
puts year
def intercalary?(year)
  if (year % 4).zero? && year % 100 != 0 || (year % 400).zero?
    true
  else
    false
  end
end

puts intercalary?(year)
