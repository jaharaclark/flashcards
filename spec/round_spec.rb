require 'rspec'
require 'pry'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

RSpec.describe Round do
  before (:each) do
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @deck = Deck.new([@card_1, @card_2, @card_3])
    @round = Round.new(@deck, @turns)
  end

  describe 'it has attributes' do
    it 'can use the deck for the round' do
      expect(@round.deck_of_cards).to eq(@deck)
      expect(@round.turns).to eq([])
    end
  end

  describe 'it can play turns' do
    it 'flashes a card and returns the correct answer' do
      @round.current_card
    end
  end
end