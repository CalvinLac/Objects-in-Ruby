class Human
	def initialize(name)
		@name = name 
	end 
	attr_accessor :name 
		
	end



def starting_messages
puts "Hi welcome to Tower of Calvin"
puts "Instructions"
puts "Enter where you would like to move from and to"
puts "Valid game modes are (easy = 1, medium = 2, hard = 3)"
end 


def game_mode_select

game_mode = 0
until (game_mode == 1 || game_mode == 2 || game_mode ==3)
	puts "Please select a valid game mode"
	game_mode = gets.chomp.to_i	
end 

if game_mode == 1
	moves = 999
	puts "You have selected easy and will be given 999 moves"
elsif game_mode == 2
	moves = 10
	puts "You have selected medium and will be given 10 moves"
elsif game_mode == 3
	moves = 7
	puts "You have selected hard and will be given 7 moves"
else
	puts "Please enter a valid game mode"
	exit
end

return moves
end





Calvin = Human.new("Calvin")

while true
starting_messages


towers = { 1 => [], 2 => [], 3 => [] }
disk = ["ooo","oo","o"]
towers[1] = disk
winning_tower = towers[1].dup
from = 0 
to = 0 


moves = game_mode_select

puts "Currently the game board looks like this"
towers.each { |tower, num_disk | puts "Tower #{tower} has #{num_disk}" }





#rules for checking valid moves 
until moves == 0 || towers[2] == winning_tower || towers [3] == winning_tower


moves -= 1
puts "Please choose what tower you want to move from"
from = gets.chomp.to_i
puts "Please choose what tower you want to place the disk"
to = gets.chomp.to_i
if from <= 0 or towers[from] == 0
	puts "#{from} isn't valid"

elsif to <= 0 or towers[to] == 0
	puts "#{from} to #{to} isn't valid"

elsif from > 3 || to > 3 
	puts "#{from} to #{to} isn't valid"

elsif from == to 
	puts "That is an invalid move, you cannot place a disk in the same tower that you picked it from"
	
elsif !towers[to].empty? && towers[from].last > towers[to].last
	puts "You cannot place a larger disk on top of a smaller one"
else
	towers[to].push towers[from].pop
end




#after every turn, the game board is displayed 
puts "Currently the game board looks like this"
towers.each { |tower, num_disk | puts "Tower #{tower} has #{num_disk}" }



#winning and losing conditions
if moves == 0 
	puts "You have lost the game, L2P!"
end
if towers[2] == winning_tower || towers [3] == winning_tower
	puts "You have won the game, thanks for playing"	
end



end
exit
end 


