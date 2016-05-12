require 'minitest/autorun'
require_relative 'SEQ_AI.rb'

class TestRandom_AI < Minitest::Test

  def test_first_available_space
	assert_equal(1, get_move([1, 2, 3, 4, 5, 6, 7, 8, 9]))
  end
  
end