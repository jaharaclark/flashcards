
class Round
  attr_accessor :deck_of_cards,
                :turns,
                :current_card,
                :number_correct,
                :card_count

  def initialize(deck_of_cards, turns)
    @deck_of_cards = deck_of_cards
    @turns = []
    @current_card = nil
    @number_correct = 0
    @card_count = 0
  end

  def current_card
   turn_card = @deck_of_cards.cards.first
   @deck_of_cards.cards.delete(0)
   return turn_card
  end

  def take_turn(player_guess)
    attempt = Turn.new(player_guess, current_card)
    attempt.correct?
      if attempt.correct?
        @number_correct += 1
      end
    attempt.feedback
    @turns << attempt
    
  end
end