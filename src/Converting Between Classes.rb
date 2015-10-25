#Converting Between Classes
###########################

s = "123"
sym = :SYMBOL
f = 192.2
i = 5

puts f.to_i
puts Integer(f)

puts i.to_f
puts Float(i)

puts f.to_s * 2
puts String(f) * 2

puts s.to_i
puts Integer(s)

puts String(sym)
puts s.intern
puts sym.to_s

#Call and Response
puts age.respond_to?(:next) #true #Check if age.next is valid

#Check type
puts "n is an integer." if 5.is_a? Integer

