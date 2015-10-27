class Computer
    #global variable
    $manufacturer = "Mango Computer, Inc."
    #class variable
    @@files = "Hello, world!"
    def initialize(username, password)
        #instance variable
        @username = username
        @password = password
    end

    def current_user
        @username
    end

    # or   def Computer.display_files
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
class BaseClass
end

class DerivedClass < BaseClass

end

#You can directly access the attributes or methods of a superclass with Ruby's built-in super keyword
class DerivedClass < BaseClass
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

class Drawing
    def self.make_circle
        Circle.new
    end

    class Line
    end

    class Circle
        def msg
            puts "class Circle"
        end
    end
end

a = Drawing.make_circle
a.msg
a = Drawing::Circle.new
a.msg

