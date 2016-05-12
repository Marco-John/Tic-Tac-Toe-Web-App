# create board array & output array
def game_board
  board_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  board_array
end

# pass in board, marker x & marker_position then return updated board
def update_board(board_array, marker_position, marker)
  board_array[marker_position] = marker
  board_array
end

  
# pass in updated board & marker_position then return true
def valid_position(board_array, marker_position)
  if board_array[marker_position] == marker_position + 1
    true
  else
    false
  end
end

def all_winning_combinations(board_array, marker)
  if board_array[0] == marker && board_array[1] == marker && board_array[2] == marker ||
    board_array[3] == marker && board_array[4] == marker && board_array[5] == marker ||
    board_array[6] == marker && board_array[7] == marker && board_array[8] == marker ||
    board_array[0] == marker && board_array[3] == marker && board_array[6] == marker ||
    board_array[1] == marker && board_array[4] == marker && board_array[7] == marker ||
    board_array[2] == marker && board_array[5] == marker && board_array[8] == marker ||
    board_array[0] == marker && board_array[4] == marker && board_array[8] == marker ||
    board_array[2] == marker && board_array[4] == marker && board_array[6] == marker
    true
  else
    false
  end
end

def game_ends_tied?(game_board)
  board_array =[]
  game_board.each do |value|
    if value == "X" ||value == "O"
      board_array << value
    end
  end
  board_array.count == 9
  
end  

#def game_ends_tied(game_board)
#  game_board.all do |value|
#    value.class == String
#    end
#end
  
def game_over?(game_board, marker)
  all_winning_combinations(game_board, marker) ||game_ends_tied?(game_board)
end
  
def get_available_spaces(board)
    available_spaces = []
    board.each do |value|
      if value.is_a?(Fixnum)
         available_spaces << value
      end
   end
   available_spaces
end