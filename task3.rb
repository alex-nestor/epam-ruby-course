books = [
  {
    name: 'Learning ruby, mysql and JavaScript',
    author: 'Robin Snow',
    price: 30,
    tags: %w[ruby javascript mysql]
  },
  {
    name: 'Ruby for the Web: Visual QuickStart Guide',
    author: 'Larry Snow',
    price: 25,
    tags: ['ruby']
  },
  {
    name: 'Ruby and MySqL for Dynamic Web Sites',
    author: 'Larry Snow',
    price: 14.39,
    tags: %w[ruby mysql]
  },
  {
    name: 'Modern Ruby: New Features and Good Practices',
    author: 'Josh Snow',
    price: 24,
    tags: ['ruby']
  },
  {
    name: 'JavaScript and JQuery: Interactive Front-End Web Development',
    author: 'Jon Snow',
    price: 20,
    tags: %w[javascript jquery]
  },
  {
    name: 'Miss Peregrine Home for Peculiar Children',
    author: 'Ransom Snow',
    price: 8.18
  }
]

def sort_by_price(arr)
  arr.sort_by { |el| el[:price] }
end

def find_tags(arr)
  res = []
  arr.select do |el|
    if el[:tags]
      el[:tags].include?('ruby') ? res << el : res
    end
  end
  res.to_s
end

puts sort_by_price books
puts '---------------------------------------------'
puts find_tags books
