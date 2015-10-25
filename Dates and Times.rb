#Dates and Times
################

puts Time.now
puts Time.now - 10 #now - 10 seconds

class Fixnum
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    minutes * 60
  end

  def days
    hours * 24
  end
end

puts Time.now + 10.minutes
puts Time.now + 16.hours
puts Time.now - 7.days

#Create Time objects
puts Time.local(1994,7,17,4,30,05,10)
puts Time.utc(1994,"Jul",17)
puts Time.utc(1994,"Jul",17).to_i

#Time methods
now = Time.now
puts now
puts now.year
puts now.month
puts now.day
puts now.hour
puts now.min
puts now.sec
puts now.usec
puts now.wday
puts now.mday
puts now.yday
puts now.zone
puts now.utc?

