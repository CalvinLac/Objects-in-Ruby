class Human

	def initialize(name)
		@name=name
	end	
attr_accessor :name
end



	def starting_messages 
		puts "Thank you for playing Rock-Paper-Scissors"
	end

	
	def player_choice 
		input = 0 
		player_hand = 0
		until player_hand == "rock" || player_hand == "paper" || player_hand == "scissor"
			puts "Please enter a valid choice "
			input = gets.chomp 
			player_hand = input 
		end
			return player_hand
		end  



	def computer_choice
		hands = ["rock", "paper", "scissor"]
		computers_hand = hands.sample 
		puts "The computer has choosen #{computers_hand}"
		return computers_hand
	end 


	Calvin = Human.new("Calvin")

	while true
	starting_messages
	player = player_choice
	computer = computer_choice

if player==computer
	puts "You and the computer have choosen #{player} so there is a tie! "	

redo

elsif (player=="rock" and computer=="scissors") || (player=="paper" and computer =="rock") || (player=="scissors" and computer=="paper")
		puts "You have beaten the computer"

break

else 
		puts "The computer has owned you"

break

end



end


