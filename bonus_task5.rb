# dolphin -> The Dolphin
# alaska -> Alaskalaska
# europe -> Europeurope

def make_band(str)
  if str[0] == str[str.length - 1]
    str = (str[0..-2] + str).capitalize
  else
    'The ' + str.capitalize
  end
end

puts make_band 'dolphin'
puts make_band 'alaska'
puts make_band 'europe'
