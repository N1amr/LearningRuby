class Person
  #  Read/Write data member
  attr_accessor :name, :age, :gender
end

#Instantiate new object of class Person
person = Person.new;

#Access object data
person.name = "Amr Alaa";
person.age = 21;
person.gender = "Male";

#"puts" prints new line unlike "print"
print "person is named "
puts person.name

class Pet
  attr_accessor :name, :age, :gender, :color
end

#Dog calss inherits from Pet
class Dog < Pet
  #  Define class methods
  def bark
    puts "Woof!"
  end
end

my_dog = Dog.new
my_dog.bark

#Check objects' type
puts my_dog.class
puts 123.class
puts "123".class
