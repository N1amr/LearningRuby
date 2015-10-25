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
dictionary = {
  cat: 'feline animal',
  dog: 'canine animal'
}

puts dictionary.size #2
puts dictionary.length #2
dictionary['cat'] = "fluffy animal"
puts dictionary['cat']

#Hashes methods
x = { "a" => 100, "b" => 20, "c" => 300 }
x.each { |key, value| puts "#{key} equals #{value}" }
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

