
class Round
  attr_reader :deck_of_cards,
              :turns,
              :current_card

  def initialize(deck_of_cards, turns, current_card = nil)
    @deck_of_cards = deck_of_cards
    @turns = []
  end

  def current_card
    @current_card = @deck_of_cards.cards[@turns.length]
  end
end