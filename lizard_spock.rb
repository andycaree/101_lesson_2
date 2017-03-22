# write a method that includes the greeting
# write a loop where user input is captured to
#  address invalid choices
# write a main big loop that captures almost
#  everything to allow playing the game again
# add lizard and spock into the program

VALID_CHOICES = %w(rock paper scissors lizard spock).freeze

def greeting(message)
  puts message
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper')



end

loop do
  def computing_choices(player, computer)
    if win?(player, computer)
      greeting('You win!')
    elsif win?(computer, player)
      greeting('You lost!')
    else
      greeting("It's a tie!")
    end
  end

  greeting('Welcome to the game!')

  users_choice = ''

  loop do
    greeting("Please choose one: #{VALID_CHOICES.join(', ')}")
    users_choice = gets.chomp

    if VALID_CHOICES.include?(users_choice)
      break
    else
      greeting('Please enter a valid choice.')
    end
  end

  computers_choice = VALID_CHOICES.sample
  greeting("You chose: #{users_choice} ")
  greeting("The computer chose: #{computers_choice}")
  computing_choices(users_choice, computers_choice)

  greeting('Would you like to try again?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
