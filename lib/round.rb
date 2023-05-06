
class Round
  attr_reader :deck_of_cards,
              :turns

  def initialize(deck_of_cards, turns)
    @deck_of_cards = deck_of_cards
    @turns = []
  end
end