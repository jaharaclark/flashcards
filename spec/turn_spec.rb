require 'rspec'
require 'pry'
require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  before (:each) do
    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @turn = Turn.new("Juneau", @card)
    @card_b = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    @turn_b = Turn.new("Saturn", @card_b)
  end

  describe 'Initial Turn Creation' do
    it 'exists' do
      expect(@turn).to be_a(Turn)
    end

    it 'has attributes' do
      expect(@turn.card).to be_a Card
      expect(@turn.guess).to eq("Juneau")
    end
  end

  describe 'it can check guesses' do
    it 'can indicate that a guess is correct' do
      expect(@turn.guess).to eq("Juneau") 
      @turn.correct?
      expect(@turn.correct?).to be(true)
      @turn.feedback
      expect(@turn.feedback).to eq("Correct!")
    end

    it 'can indicate that a guess is incorrect' do
      expect(@turn_b.guess).to eq("Saturn")
      @turn_b.correct?
      expect(@turn_b.correct?).to be(false)
      @turn_b.feedback
      expect(@turn_b.feedback).to eq("Incorrect.")
    end
  end
end