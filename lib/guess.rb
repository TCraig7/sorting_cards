require "./lib/card"

class Guess
  attr_reader   :guess,
                :value,
                :suit

  def initialize(guess)
    @guess  = guess
  end

  def card(value, suit)
    @value  = value
    @suit   = suit
  end
end
