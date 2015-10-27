#Hashes
#######

my_hash = Hash.new

default_value = 0
my_hash = Hash.new(default_value)

dictionary = {
  'cat' => 'feline animal',
  'dog' => 'canine animal'
}

#Symbols as keys
dictionary = {
  :cat => 'feline animal',
  :dog => 'canine animal'
}

#Note that even though these keys have colons at the end instead of the beginning
#They're still symbols!
=begin
dictionary = {
  cat: 'feline animal',
  dog: 'canine animal'
}
=end

puts dictionary.size #2
puts dictionary.length #2
dictionary['cat'] = "fluffy animal"
puts dictionary['cat']

#Hashes methods
x = { "a" => 100, "b" => 20, "c" => 300 }

#Iterate
x.each { |key, value| puts "#{key} equals #{value}" }
x.each_key { |key| puts "#{key}" }
x.each_value { |value| puts "#{value}" }

puts x.keys.inspect #["a", "b", "c"]
puts x.values.inspect #[1, 2, 3]

x.delete("a")
puts x.inspect #{"b"=>20, "c"=>300}
x.delete_if { |key, value| value < 25 }
puts x.inspect #{"c"=>300}

x = x.sort_by {|a, b| b }
x.reverse!

#Hashes of hashes
people = {
  'fred' => {
  'name' => 'Fred Elliott',
  'age' => 63,
  'gender' => 'male',
  'favorite painters' => ['Monet', 'Constable', 'Da Vinci']
  },
  'janet' => {
  'name' => 'Janet S Porter',
  'age' => 55,
  'gender' => 'female'
  }
}

a = [1, 2, 3]
b = [4, 5, 6]
pairs = a.zip(b) #[[1, 4], [2, 5], [3, 6]]
puts Hash[pairs].inspect # {1=>4, 2=>5, 3=>6}

movie_ratings = {
  :truman_show => 4,
  :red_dawn => 1.5,
  :skyfall => 4,
  :alex_cross => 2,
}

#Select
good_movies = movie_ratings.select{ |name, rating|
  rating > 3
}
