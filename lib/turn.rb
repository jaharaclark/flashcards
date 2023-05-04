
class Turn
  attr_reader :guess_string,
              :card

  def initialize(guess_string, card)
    @guess_string = guess_string
    @card = card
  end
end