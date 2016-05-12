require 'minitest/autorun'
require_relative 'Sample_AI.rb'

class TestSimple_AI < Minitest::Test

  def test_last_available_space
		assert_equal(1, get_move([1, "X", "X", "O", "X", "O", "X", "0", "X"]))
		assert_equal(5, get_move(["O", "X", "X", "O", 5, "O", "X", "0", "X"]))
  end
  
  def test_multiple_available_space
		assert_includes([ 1, 2 ,3], get_move([1, 2, 3, "O", "X", "O", "X", "0", "X"]))
		refute_includes([ 4, 5, 6, 7], get_move([1, 2, 3, "O", "X", "O", "X", "0", "X"]))

  end
  
end