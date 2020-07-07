# frozen_string_literal: true

class Player
  attr_accessor :name, :cards

  def initialize(name)
    @name = name
    @cards = []
  end

  def add_card(card)
    cards.push(card)
  end

  def show_cards
    print name
    print ' cards: [ '
    cards.each do |card|
      print "#{card.value} "
    end
    puts ']'
  end
end
