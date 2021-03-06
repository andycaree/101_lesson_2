def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

prompt("Welcome to the Calculator!  Enter your name:")

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt("Hey!  Enter a name freakshow!!")
  else
    break
  end
end
prompt("Hey there #{name}")

loop do # main loop
  num1 = ''
  loop do
    prompt("What is your first number?")
    num1 = gets.chomp
    if valid_number?(num1)
      break
    else
      prompt("It looks like there was an error.  What is your first number?")
    end
  end

  num2 = ''
  loop do
    prompt("What is your second number?")
    num2 = gets.chomp
    if valid_number?(num2)
      break
    else
      prompt("It looks like there was an error.  What is your second number?")
    end
  end

  prompt("What operation would you like to perform?")
  prompt("1) add 2) subtract 3) multiply 4) divide")
  operation = ''
  loop do
    operation = gets.chomp
    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt("That isn't one of your choices.  Please enter a valid operation.")
    end
  end
  result = case operation
           when "1"
             num1.to_i + num2.to_i
           when "2"
             num1.to_i - num2.to_i
           when "3"
             num1.to_i * num2.to_i
           when "4"
             num1.to_f / num2.to_f
           end
  prompt("The result is #{result}")
  prompt("Do you want to do another calculation?")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end
prompt("Thanks for using the Calculator program!  Bye!!")
