# I need to pass in 3 things: loan amount, APR, loan duration
# APR will need to be converted to months
# loan duration (in years) will need to be converted to months
# use this formula: m = p * (j / (1 - (1 +j) ** (-n)))
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

def valid_number(num)
  num > 0
end

puts "First off, hello and welcome to my calculator."
puts "I will help you figure out how much your monthly payments on your new loan will be."

thing = ''
loop do
  puts "Are you getting a loan for a: 1) home or 2) car (Please enter the corrolating number)"
  thing = gets.chomp
  if thing != "1" && thing != "2"
    puts "That is not a valid choice.  Please enter 1 or 2."
  else
    break
  end
end

# amount of the loan
p = ''
loop do
  puts "In US dollars, how much money are you borrowing?"
  p = gets.chomp.gsub(/\D/, '').to_f
  if valid_number(p)
    break
  else
    puts "Please enter a number greater than zero."
  end
end

# annual percentage rate, then converted to months
j = ''
loop do
  puts "What is the APR?"
  apr = gets.chomp.gsub(/\D/, '').to_f
  j = (apr / 12) / 100
  if valid_number(j)
    break
  else
    puts "Please enter a number greater than zero."
  end
end

# length of loan (years), converted to months
puts "How many years is your loan?"
length = gets.chomp.gsub(/\D/, '').to_i
n = length * 12

item = case thing
       when "1"
         "home"
       when "2"
         "car"
       end

m = p * (j / (1 - (1 + j) **-n))

monthly_rate = m.round(2)

puts "Based on everything you have told me, your monthly payments on your #{item} will be $#{monthly_rate}."
