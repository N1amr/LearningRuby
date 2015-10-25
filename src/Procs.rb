multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

puts (1..100).to_a.select(&multiples_of_3)

say_hello = Proc.new do |n|
  puts "Hello"
end

say_hello.call

