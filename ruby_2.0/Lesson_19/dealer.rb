# frozen_string_literal: true

require_relative 'player'

class BlackJackDealer < Player
  def initialize(name)
    super
  end

  def hide_cards
    puts "Dealer cards: [ #{' * ' * cards.size} ]"
  end
end
