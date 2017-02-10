# ask the user for two numbers
# ask what type of operation: add, subtract, multiply, divide
# perform the operation on the two numbers
# output the result

Kernel.puts("Welcome to the Calculator!")

Kernel.puts("What is your first number?")
number_1 = Kernel.gets().chomp()

Kernel.puts("What is your second number?")
number_2 = Kernel.gets().chomp()

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operation = Kernel.gets().chomp()

if operation == "1"
  result = number_1.to_i() + number_2.to_i()
elsif operation == "2"
  result = number_1.to_i() - number_2.to_i()
elsif operation == "3"
  result = number_1.to_i() * number_2.to_i()
else operation == "4"
  result = number_1.to_f() / number_2.to_f()
end

Kernel.puts(result)