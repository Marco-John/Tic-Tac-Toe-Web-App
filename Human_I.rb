require_relative 'Tic_Tac_Toe_Functions.rb'

class Human
  
  def get_move(board)
  available_spaces = get_available_spaces(board)
      
  end
  end
    
  def get_move(board)
	print print_game_board(board)
	player_one_answer = gets.chomp
	player_one_answer.to_i
  end