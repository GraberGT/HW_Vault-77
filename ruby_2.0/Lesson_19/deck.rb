# frozen_string_literal: true

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    suits = ['+', '<3', '^', '<>']
    cards = %w[6 7 8 9 10 J Q K A]

    deck = suits.product(cards)
    deck.each do |card|
      @cards.push(Card.new(card[0], card[1]))
    end
  end

  def shuffle
    cards.shuffle!
  end

  def deal
    cards.pop
  end

  def list_cards
    cards.each do |card|
      puts "#{card.value}, #{card.suits}"
    end
  end
end
