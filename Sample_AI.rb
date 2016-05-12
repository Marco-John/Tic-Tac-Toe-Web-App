require_relative 'Tic_Tac_Toe_Functions.rb'

class Simple
  
  def get_move(board)
   available_spaces = get_available_spaces(board)
   available_spaces.sample
  end

end