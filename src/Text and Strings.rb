#Text and Strings
#################

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

