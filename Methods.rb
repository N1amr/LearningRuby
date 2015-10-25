#Parameterless
def say_hello
  puts "Hello!"
end

say_hello

#Parameter + unknown number of parameters (splat)
def whats_up(greeting, *bros)
  bros.each { |bro|
    puts "#{greeting}, #{bro}!"
  }
end

whats_up("What up", "Justin", "Ben", "Kevin Sorbo")

#Return value
def add(a, b)
  return a + b
end

puts add(5,7)

