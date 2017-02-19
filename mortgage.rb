def negative_empty(num)
  num.to_f < 0 || num.empty?
end

p = ''
loop do
  puts "What is the loan amount?"
  p = gets.chomp.gsub(/([$,])/, '')
  if negative_empty(p)
    puts "Please enter a number that is greater than zero."
  else
    break
  end
end
loan_amount = p #format('%.2f', p)

j = ''
loop do
  puts "Please choose an Annual Percentage Rate (APR)."
  j = gets.chomp.gsub(/([%])/, '')
  if negative_empty(j)
    puts "Please enter a number that is zero or greater."
  else
    break
  end
end
apr = (j.to_f / 12) / 100 #(format('%.2f', j) / 12

n = ''
loop do
  puts "In years, what is the duration of the loan?"
  n = gets.chomp
  if negative_empty(n)
    puts "Please enter a number greater than zero."
  else
    break
  end
end
time = n.to_f * 12 #format('%.2f', n)

monthly_payment = loan_amount.to_f * (apr.to_f / (1 - (1 + apr.to_f) ** (-time.to_f)))

puts "Your total monthly payment is $#{format('%.2f', monthly_payment)}."


