#Ranges
#######

puts (1..5).to_a.inspect #[1, 2, 3, 4, 5] #inclusive
puts (1...5).to_a.inspect #[1, 2, 3, 4] #exclusive
puts "R is within A to Z!" if ('A'..'Z').include?('R')

a = [2, 4, 6, 8, 10, 12]
puts a[1..3].inspect

a[1..3] = ["a", "b", "c"]
puts a.inspect

