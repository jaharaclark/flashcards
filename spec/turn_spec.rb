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
      expect(@turn.guess_string).to eq("Juneau")
      expect(@turn.card).to be_a Card
    end
  end

  describe 'it can function' do
  end
end