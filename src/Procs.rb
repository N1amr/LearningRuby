multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

puts (1..100).to_a.select(&multiples_of_3)

say_hello = Proc.new do
  puts "Hello"
end

say_hello.call

strings = ["1", "2", "3"]
nums = strings.collect(&:to_i)
puts strings.inspect #["1", "2", "3"]
puts nums.inspect #[1, 2, 3]

