require 'rspec'
require 'pry'
require './lib/card'

RSpec.describe Card do
  before (:each) do
    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  end


  describe 'Initial Card Creation' do
    it 'exists' do
      expect(@card).to be_a Card
    end

    it 'has attributes' do
      expect(@card.question).to eq("What is the capital of Alaska?")
      expect(@card.answer).to eq("Juneau")
      expect(@card.category).to eq(:Geography)
    end
  end
end