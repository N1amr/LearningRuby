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
