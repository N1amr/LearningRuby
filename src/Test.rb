

x = [5, 1, 2]
puts x.inspect #[5, 1, 2]
x.reverse! #sorts the array
puts x.inspect #[1, 2, 5]
x = [5, 1, 2]
x.reverse #returns sorted array, the array itself is not sorted
puts x.inspect #[5, 1, 2]
x = x.reverse 
puts x.inspect #[1, 2, 5]