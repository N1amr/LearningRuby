age = 21
puts "you are a teenager" if age > 12 && age < 20
puts "you are not a teenager" unless age > 12 && age < 20
puts "you are on your twenties" if age.between?(20,29)

x = 5
y = 2
puts x <=> y #Returns 0 if x and y are equal, 1 if x is higher, -1 if y is higher.

5.times do
  puts "test"
end