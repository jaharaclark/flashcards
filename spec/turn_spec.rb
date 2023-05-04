require 'rspec'
require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  before (:each) do
    @turn = Turn.new("Juneau", card)
    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  end

  describe 'Initial Turn Creation' do
    it 'exists' do
      
    end
  end
end