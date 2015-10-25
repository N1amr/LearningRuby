#Arrays
#######

x = [1, 2, 3, 4]
puts x[2] #3

#Deleting elements from arrays
x = ['1','2','3','4','5','6','7','8','9']
x.delete('5') #returns deleted element if found (otherwise, returns an object of NilClass)
x.delete_at(1) #returns deleted element if found (otherwise, returns an object of NilClass)
x.delete_if { |e| e > '7' } #return x after deletions
puts x.inspect

x = [] #Create empty array
x << "Push" #push elements to end #concatenation operator 
x << "something"

puts x #Push\nsomething

#puts tokens_arr.inspect === print tokens_arr,"\n"
puts x.inspect #["Push", "something"]
puts "Popping from x:"
x.length.times{
  puts x.pop
  puts x.inspect
}

x = ["Word", "Play", "Fun"]
puts x.join #WordPlayFun
puts x.join(', ') #Word, Play, Fun

#if you use scan without a block of code, it returns an array of all the matching parts of the string
tokens_arr = "This is a test".scan(/\w+/)
puts tokens_arr.inspect #["This", "is", "a", "test"]

tokens_arr = "This is a test".split(/ /)
puts tokens_arr.inspect #["This", "is", "a", "test"]

#Iterating over arrays
[1, "test", 2, 3, 4].each { |element| puts element.to_s + "X" }

src = [1, 2, 3, 4]
#pushes last expression answer to returned array
arr = src.collect { |element| element = element * 11 ; x = element ; x * 100 } #[1100, 2200, 3300, 4400]
puts src.inspect
puts arr.inspect

#Other array methods
x = []
puts "x is empty" if x.empty?

x = [1, 2, 3, 4, 5]
y = [1, 2, 3]
concat = x + y
difference = x - y
puts concat.inspect
puts difference.inspect
puts x.include?(3)
puts x.include?("x")
puts "First element is #{x.first}"
puts "Last element is #{x.last}"
puts x.first(3).join(", ") #1, 2, 3
puts x.last(2).join(", ") #4, 5
puts x.reverse.inspect

x = [5, 1, 2]
puts x.inspect #[5, 1, 2]
x.sort! #sorts the array
puts x.inspect #[1, 2, 5]
x = [5, 1, 2]
x.sort #returns sorted array, the array itself is not sorted
puts x.inspect #[5, 1, 2]
x = x.sort
puts x.inspect #[1, 2, 5]

