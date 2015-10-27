class Computer
  $manufacturer = "Mango Computer, Inc." #global variable
  @@files = "Hello, world!" #class variable

  def initialize(username, password)
    @username = username #instance variable
    @password = password
  end

  def current_user
    @username
  end

  def self.display_files # or   def Computer.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345) #local variable

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.

#Inheritance
class DerivedClass < BaseClass

end

#You can directly access the attributes or methods of a superclass with Ruby's built-in super keyword
class DerivedClass < Base
  def some_method
    super(optional args)
    # Some stuff
  end
end

class Person
  def initialize(name, job)
    @name = name
    @job = job
  end

  #  attr_reader :name
  def name
    @name
  end

  #  attr_writer :name
  def job=(new_job)
    @job = new_job
  end

  #  attr_accessor :job

end

