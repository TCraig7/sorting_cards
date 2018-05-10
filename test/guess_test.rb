require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require "./lib/card"

class GuessTest < Minitest::Test

  def test_it_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of Guess, guess
  end

  def test_it_draws_card
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal "10 of Hearts", guess.response
  end

  def test_if_guess_correct
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert guess.correct?
  end

  def test_if_it_gives_feedback
    card_correct = Card.new("10", "Hearts")
    guess_correct = Guess.new("10 of Hearts", card_correct)

    card_incorrect = Card.new("Queen", "Clubs")
    guess_incorrect = Guess.new("2 of Diamonds", card_incorrect)

    assert_equal "Correct!", guess_correct.feedback
    assert_equal "Incorrect!", guess_incorrect.feedback
  end

end
