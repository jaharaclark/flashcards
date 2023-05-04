
class Turn
  attr_reader :guess,
              :card

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    @guess == @card.answer ? true : false
  end

  def feedback
    correct? == true ? "Correct!" : "Incorrect."
  end
end