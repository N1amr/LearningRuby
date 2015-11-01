#Flow control
#############

age = 21
type = age < 18 ? "child" : "adult"
puts "You are #{type.match("^[aeiou].*")?'an':'a'} #{type}"

fruit = "orange"

#if/elsif/else/end
if fruit == "orange"
  color = "orange"
elsif fruit == "banana"
  color = "yellow"
else
  color = "unknown"
  exit
end

#case/when/end
case fruit
when "orange"
  color = "orange"
when "banana"
  color = "yellow"
else
  color = "unknown"
end

#case returning value
color = case fruit
when "orange"
  "orange"
when "banana"
  "yellow"
else
  "unknown"
end

x = 1
while x < 100
  print x," "
  x = x * 2
end
puts

x = 1
until x > 99
  print x," "
  x = x * 2
end
puts

#Loops
######
5.times {} # 0:4
1.upto(5) {} # 1:5
10.downto(5) {} # 10:-1:5
0.step(50, 5) {} # 0:5:50

# do ... end === { ... }

3.times do |i|
  print "i = "
  puts i
end

for i in 1...5
  puts i
end

i = 0
loop do
  i+=1
  next if i % 2 == 0 #continue
  puts i
  break if i > 4 #break
end

#each_vowel accepts a code block, as designated by the ampersand (&) before the variable name code_block in the method definition. It then iterates over each vowel in the literal array %w{a e i o u} and uses the call method on code_block to execute the code block once for each vowel, passing in the vowel variable as a parameter each time.
def each_vowel(&code_block)
  %w{a e i o u}.each { |vowel| code_block.call(vowel) }
end

#alternatively
#def each_vowel
#  %w{a e i o u}.each { |vowel| yield vowel }
#end

each_vowel { |vowel| puts vowel }

print_parameter_to_screen = lambda { |arg1, arg2| puts arg1 * arg2 }
print_parameter_to_screen.call(3,2) #6

