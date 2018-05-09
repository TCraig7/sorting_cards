require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'

class GuessTest < Minitest::Test

  def test_it_exists
    guess = Guess.new(guess)
    assert_instance_of Guess, guess
  end

  def test_it_draws_card
    guess = Guess.new(guess)
    assert_equal ("10 of Hearts")
  end
end
