require 'rspec'
require 'pry'
require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  before (:each) do
    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @turn = Turn.new("Juneau", @card)
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

  describe 'it can function' do
    it 'can check a guess' do 
      @turn.correct?
      expect(@turn.correct?).to be(true)
      @turn.feedback
      expect(@turn.feedback).to eq("Correct!")
    end
  end
end