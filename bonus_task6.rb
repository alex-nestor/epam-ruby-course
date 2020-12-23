# We have chars mapping: A => T, C => G. You need to create a converter for strings with the results:
# "ATTGC" -> returns "TAACG", "GTAT" -> returns "CATA"

def convert(str)
  str.tr('ATCG', 'TAGC') if str.split('').all? { |c| /[ATCG]+/.match(c) }
end

puts convert 'ATTGC'
puts convert 'GTAT'
