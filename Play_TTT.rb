require_relative 'Simple_AI.rb'
require_relative 'SEQ_AI.rb'

def play_game(current_player, opponent, board)
  move = current_player[:player_mode].get_move(board)
  board = update_board(board, move - 1, current_player[:marker])
  if game_over?(board, current_player[:marker])
    board
  else
    play_game(opponent, current_player, board)
  end
  
end
