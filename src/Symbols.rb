#Symbols
########

current_situation = :good
puts "Everything is fine" if current_situation == :good
puts "PANIC!" if current_situation == :bad

person1 = { :name => "Fred", :age => 20, :gender => :male }
puts person1[:name]

