def negative_or_empty?(num)
  num.to_f < 0 || num.empty? || num.to_i == 0
end

loan_amount = ''
loop do
  puts "What is the loan amount?"
  loan_amount = gets.chomp.gsub(/([$,])/, '') # removes the '$' and ','' symbols
  if negative_or_empty?(loan_amount)
    puts "Please enter a number greater than zero."
  else
    break
  end
end

apr = ''
loop do
  puts "Please choose an Annual Percentage Rate (APR)."
  apr = gets.chomp.gsub(/([%])/, '') # removes the '%' symbol
  if negative_or_empty?(apr)
    puts "Please enter a number greater than zero."
  else
    break
  end
end
monthly_rate = (apr.to_f / 12) / 100

years = ''
loop do
  puts "In years, what is the duration of the loan?"
  years = gets.chomp
  if negative_or_empty?(years)
    puts "Please enter a number greater than zero."
  else
    break
  end
end
loan_length = years.to_f * 12

monthly_payment = loan_amount.to_f *
                  (monthly_rate / (1 - (1 + monthly_rate)**-loan_length))

puts "Your total monthly payment is $#{format('%.2f', monthly_payment)}."
