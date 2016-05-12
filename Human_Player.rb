require_relative 'Tic_Tac_Toe_Functions.rb'

def print_game_board(array)

	puts "Game Board"
	
	puts " #{array[0]} | #{array[1]} | #{array[2]} "
	puts "-----------"
	puts " #{array[3]} | #{array[4]} | #{array[5]} "
	puts "-----------"
	puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

class Human
  def get_move(board)
	print print_game_board(board)
	player_one_answer = gets.chomp
	player_one_answer.to_i
  end
end