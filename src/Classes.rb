class Computer
  $manufacturer = "Mango Computer, Inc." #global variable
  @@files = {hello: "Hello, world!"} #class variable

  def initialize(username, password)
    @username = username #instance variable
    @password = password
  end

  def current_user
    @username
  end

  def self.display_files
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

