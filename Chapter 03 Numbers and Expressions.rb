age = 21
puts "you are a teenager" if age > 12 && age < 20
puts "you are not a teenager" unless age > 12 && age < 20
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
