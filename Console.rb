require_relative 'Play_TTT.rb'

def print_game_board(array)

	puts "Game Board"
	
	puts " #{array[0]} | #{array[1]} | #{array[2]} "
	puts "-----------"
	puts " #{array[3]} | #{array[4]} | #{array[5]} "
	puts "-----------"
	puts " #{array[6]} | #{array[7]} | #{array[8]} "
end


player_1 = {:player_mode => Human.new, :marker => "X"}
player_2 = {:player_mode => Sequential.new, :marker => "O"}
board = game_board
final_board = play_game(player_1, player_2, board)
print_game_board(board)