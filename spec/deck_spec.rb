 require 'rspec'
 require 'pry'
 require './lib/card'
 require './lib/deck'

 RSpec.describe Deck do
  before (:each) do 
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @cards = [@card_1, @card_2, @card_3]
    @deck = Deck.new(@cards)
  end

  describe 'the deck uses cards' do 
    it 'puts cards into a deck' do
      expect(@deck.cards).to eq([@card_1, @card_2, @card_3])
      expect(@deck.cards.count).to eq(3)
    end

    it 'can return cards by category' do
      @deck.cards_in_category(:STEM)
      expect(@deck.cards_in_category(:STEM)).to eq([@card_2, @card_3])
      @deck.cards_in_category(:Geography)
      expect(@deck.cards_in_category(:Geography)).to eq([@card_1])
    end

    it 'does not return cards for categories that do not exist' do
      @deck.cards_in_category("Pop Culture")
      expect(@deck.cards_in_category("Pop Culture")).to eq([])
    end
  end
end