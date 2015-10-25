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

puts sym.to_s
puts String(sym)

