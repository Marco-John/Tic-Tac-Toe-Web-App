require 'minitest/autorun'
require_relative 'Play_TTT.rb'

class TestPlayTicTacToe < Minitest::Test

	def test_if_board_array_exists
		player_1 = {:player_mode => Simple.new, :marker => "X"}
		player_2 = {:player_mode => Sequential.new, :marker => "O"}
		board =  game_board
		final_board = play_game(player_1, player_2, board)
		assert_equal(true, game_over?(final_board, "X") || game_over?(final_board, "O"))
	end
	
	def test_final_board_count_of_integers
		player_1 = {:player_mode => Simple.new, :marker => "X"}
		player_2 = {:player_mode => Sequential.new, :marker => "O"}
		board =  game_board
		final_board = play_game(player_1, player_2, board)
		remaining_board = get_available_spaces(final_board)
		assert_equal(true, remaining_board.count <= 4)
	end
	
end

