
def negative_empty(num)
  num.to_f < 0 || num.empty?
end
j = ''
loop do
  puts "Please choose an Annual Percentage Rate (APR)."
  apr = gets.chomp.gsub(/([%])/, '')(.to_f / 12) / 100 # removes the '%' symbol
  if negative_empty(j)
    puts "Please enter a number that is zero or greater."
  else
    break
  end
end
# apr = (j.to_f / 12) / 100
puts apr