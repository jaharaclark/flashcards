require './lib/card'
require 'pry'
class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def cards_in_category(category)
    matching_cards = []
    for card in @cards do
      if card.category == category
        matching_cards << card
      end
    end
    return matching_cards
  end
end