class Person
  attr_accessor :name, :age, :gender
end

person = Person.new;
person.name = "Amr Alaa";
person.age = 21;
person.gender = "Male";

print "person is named "
puts person.name

class Pet
  attr_accessor :name, :age, :gender, :color
end

class Dog < Pet
  def bark
    puts "Woof!"
  end
end

my_dog = Dog.new
my_dog.bark(); 