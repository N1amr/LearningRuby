age = 21
puts "you are a teenager" if age > 12 && age < 20
puts "you are not a teenager" unless age >= 13 && age < 20
puts "you are on your twenties" if age.between?(20,29)

x = 5
y = 2
puts x <=> y #Returns 0 if x and y are equal, 1 if x is higher, -1 if y is higher.

#############################################
#Loops

5.times {} # 0:4
1.upto(5) {} # 1:5
10.downto(5) {} # 10:-1:5
0.step(50, 5) {} # 0:5:50

# do ... end === { ... }

3.times do |i|
  print "i = "
  puts i
end

#########################################
#Float numbers

puts 10/3
puts 10.to_f / 3.to_f
puts 3.333.to_i

########################################
#Constants are represented in Ruby by a variable name beginning with a capital letter
PI = 3.14159

#######################################
#Text and Strings

#You can use < and >, ( and ), or simply two other delimiters of your choice
x = %q{Line "1"
Line "2"
}
puts x

x = <<END_MY_STRING_PLEASE
This is the string
And a second line
END_MY_STRING_PLEASE
puts x

puts "abc " * 5 #prints "abc abc abc abc abc "

puts ?x #value of 'x' = 120
puts 120.chr #prints 'x'

x = 10
y = 2
puts x.to_s + " + " + y.to_s + " = " + (x + y).to_s
my_string = "#{x} + #{y} = #{x + y}"
puts my_string #prints "10 + 2 = 12"

#String methods
"Test".length #4
"Test" + "Test" #TestTest
"Test".capitalize #Test
"Test".upcase #TEST
"Test".downcase #test
"Test".swapcase #tEST
"Test".chop #Tes
"Test".next #Tesu
"Test".reverse #tseT
"Test".hash #-98625764
"Test".sum #416

########################################
#RegEx

puts "foobarbar".sub('bar', 'foo') #foofoobar
puts "foobarbar".gsub('bar', 'foo') #foofoofoo
puts "foobarbar".sub(/^.../, 'Hello') #Hellobarbar

"xa1xxa2a3a4".scan(/a\d*/) { |s|
  puts s
}

puts %q[
Table 3-4. Basic Special Characters and Symbols Within Regular Expressions
Character  Meaning
^          Anchor for the beginning of a line
$          Anchor for the end of a line
\A         Anchor for the start of a string
\Z         Anchor for the end of a string
.          Any character
\w         Any letter, digit, or underscore
\W         Anything that \w doesn’t match
\d         Any digit
\D         Anything that \D doesn’t match (non-digits)
\s         Whitespace (spaces, tabs, newlines, and so on)
\S         Non-whitespace (any visible character)
]

puts %q[
Table 3-5. Regular Expression Character and Sub-Expression Modifiers
Modifier  Description
*         Match zero or more occurrences of the preceding character, and match as many as possible.
+         Match one or more occurrences of the preceding character, and match as many as possible.
*?        Match zero or more occurrences of the preceding character, and match as few as possible.
+?        Match one or more occurrences of the preceding character, and match as few as possible.
?         Match either one or none of the preceding character.
{x}       Match x occurrences of the preceding character.
{x,y}     Match at least x occurrences and at most y occurrences.
]

puts "String has vowels" if "This is a test" =~ /[aeiou]/
puts "String contains no digits" unless "This is a test".match("[0-9]")

#match returns a MatchData object that can be accessed like an array. The first element contains the data matched by the entire regular expression. However, each successive element contains that which was matched by each referenced section of the regular expression.
x = "This is a test".match(/(\w+) (\w+)/)
puts x[0] #This is
puts x[1] #This
puts x[2] #is

################################################
#Arrays and Lists

x = [1, 2, 3, 4]
puts x[2] #3

#Deleting elements from arrays
x = ['1','2','3','4','5','6','7','8','9']
x.delete('5') #returns deleted element if found (otherwise, returns an object of NilClass)
x.delete_at(1) #returns deleted element if found (otherwise, returns an object of NilClass)
x.delete_if { |e| e > '7' } #return x after deletions
puts x.inspect

x = [] #Create empty array
x << "Push" #push elements to end
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

################################################
#Hashes

dictionary = { 'cat' => 'feline animal', 'dog' => 'canine animal' }
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
puts x.inspect #{"b"=>2, "c"=>3}
x.delete_if { |key, value| value < 25 }
puts x.inspect

