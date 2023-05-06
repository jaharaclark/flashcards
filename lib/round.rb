
class Round
  attr_accessor :deck_of_cards,
                :turns,
                :number_correct

  def initialize(deck_of_cards, turns)
    @deck_of_cards = deck_of_cards
    @turns = []
    @number_correct = 0
  end

  def current_card
    @deck_of_cards.cards.first
  end

  def take_turn(player_guess)
    new_turn = Turn.new(player_guess, current_card)
    @turns << new_turn
    @deck_of_cards.cards.shift
    if player_guess == new_turn.card.answer
      @number_correct += 1
    end
    return new_turn
  end

end