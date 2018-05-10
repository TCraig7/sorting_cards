require "./lib/deck"
require "./lib/card"
require "./lib/guess"

class Round
  attr_reader   :deck,
                :guesses,
                :current_card

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = deck.cards[0]
  end
end
