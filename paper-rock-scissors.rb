# Request user input - 

# User picks paper, rock or scissors
# Computer picks paper, rock or scissors
# Evaluate choices
# Choose winner
# Play again


CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

puts "Welcome to Paper, Rock, Scissors! Let's play."

loop do 

	begin 
		puts "Choose either paper(p), rock(r) or scissors(s)."
		user_choice = gets.chomp.downcase
	end until CHOICES.keys.include?(user_choice)
	

	computer_choice = CHOICES.keys.sample


	if user_choice == computer_choice
		puts "It's a tie!"
	elsif (user_choice == 'p' && computer_choice == 'r') || (user_choice == 'r' && computer_choice == 's') || (user_choice == 's' && computer_choice =='p')
		puts "Congratulations! You won this round!"
	else
		"Oh no, you lost this round!"
	end
end



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