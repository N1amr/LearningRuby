def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })
pro = Proc.new { puts "I'm the proc!" }

#Lambdas vs. Procs
#First, a lambda checks the number of arguments passed to it, while a proc does not. This means that a lambda will throw an error if you pass it the wrong number of arguments, whereas a proc will ignore unexpected arguments and assign nil to any that are missing.
#Second, when a lambda returns, it passes control back to the calling method; when a proc returns, it does so immediately, without going back to the calling method.

def proc_f
  victor = Proc.new { return "proc return" }
  victor.call
  "proc_f return"
end

puts proc_f

def lambda_f
  victor = lambda { return "lambda return" }
  victor.call
  "lambda_f return"
end

puts lambda_f

