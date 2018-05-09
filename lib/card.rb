class Card
  attr_reader   :value,
                :suit

  def initialize(value, suit)
    @value  = value
    @suit   = suit
  end

  def draw_new (new_card)
    @value  = value
    @suit   = suit
  end
end
