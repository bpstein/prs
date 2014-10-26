# Request user input - 

# User picks paper, rock or scissors
# Computer picks paper, rock or scissors
# Evaluate choices
# Choose winner
# Play again



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

loop do 

	# User chooses p, r or s
	begin 
		puts "Choose either paper(p), rock(r) or scissors(s)."
		user_choice = gets.chomp.downcase
	end until CHOICES.keys.include?(user_choice)
	

	# Computer chooses p, r or s
	computer_choice = CHOICES.keys.sample


	if user_choice == computer_choice
		puts "It's a tie!"
	elsif (user_choice == 'p' && computer_choice == 'r') || (user_choice == 'r' && computer_choice == 's') || (user_choice == 's' && computer_choice =='p')
		display_message(user_choice)
		puts "Congratulations! You won this round!"
	else
		display_message(computer_choice)
		puts "Oh no, you lost this round!"
	end

	puts "Play again? (y/n)"
	break if gets.chomp.downcase != 'y'

end

puts "Thanks for playing!"



# choice = gets.chomp
# choice_check = false

# 	while choice_check == false
# 		if choice == 'rock'
# 			break 
# 		elsif choice == 'paper'
# 			break
# 		elsif choice == 'scissors'
# 			break
# 		else 
# 			puts "Sorry, that is not a valid choice. Choose either paper, rock or scissors."
# 			choice = gets.chomp
# 			choice_check == false
# 		end 
# 	end

# user_choice = choice_check


# def user_picks_paper
# 	case 
# 		when computer_choice == rock 
# 			puts "Congratulations, you won this round!"
# 		when computer_choice == scissors 
# 			puts "Oh no, you lost this round?"
# 		else puts "It's a tie!"
# 	end
# end

# def user_picks_rock
# end

# def user_picks_scissors
# end