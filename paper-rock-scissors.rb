# Request user input
def say(message)
	puts "=> #{message}"
end

say "Let's play paper, rock, scissors! Choose either paper, rock or scissors."
choice = gets.chomp
choice_check = false

	while choice_check == false
		if choice == 'rock'
			break 
		elsif choice == 'paper'
			break
		elsif choice == 'scissors'
			break
		else 
			puts "Sorry, that is not a valid choice. Choose either paper, rock or scissors."
			choice = gets.chomp
			choice_check == false
		end 
	end

user_choice = choice_check


def user_picks_paper
	case 
		when computer_choice == rock 
			puts "Congratulations, you won this round!"
		when computer_choice == scissors 
			puts "Oh no, you lost this round?"
		else puts "It's a tie!"
	end
end

def user_picks_rock
end

def user_picks_scissors
end