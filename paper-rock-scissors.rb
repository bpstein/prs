# Declare constants for the game: p, r & s
CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

# Welcome message
puts "Welcome to Paper, Rock, Scissors! Let's play."

# Display message on game completion
def display_message(winning_choice)
  case winning_choice
  when 'p'
    puts "Paper wraps rock!"
  when 'r'
    puts "Rock smashes scissors!"
  when 's'
    puts "Scissors cuts paper!"
  end
end

# Gameplay loop until broken by user
loop do 

  # User chooses p, r or s
  begin 
    puts "Choose either paper(p), rock(r) or scissors(s)."
    user_choice = gets.chomp.downcase
    choice_check = false

    # Validate user choice as either p, r or s
    while choice_check == false
      if user_choice == 'r'
        break 
      elsif user_choice == 'p'
        break
      elsif user_choice == 's'
        break
      else 
        puts "Sorry, that is not a valid choice. Choose either p, r or s."
        user_choice = gets.chomp.downcase
        choice_check == false
      end 
    end
  end until CHOICES.keys.include?(user_choice)

  # Computer chooses p, r or s
  computer_choice = CHOICES.keys.sample

  # Compare user choice to computer choice
  if user_choice == computer_choice
    puts "It's a tie!"
  elsif (user_choice == 'p' && computer_choice == 'r') || (user_choice == 'r' && computer_choice == 's') || (user_choice == 's' && computer_choice =='p')
    display_message(user_choice)
    puts "Congratulations! You won this round!"
  else
    display_message(computer_choice)
    puts "Oh no, you lost this round!"
  end
  
  # Ask user if they would like to play again
  puts "Play again? (y/n)"
  break if gets.chomp.downcase != 'y'
end

# End message
puts "Thanks for playing!"