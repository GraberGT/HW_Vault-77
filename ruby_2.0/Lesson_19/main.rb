# frozen_string_literal: true

require_relative 'player'
require_relative 'dealer'
require_relative 'card'
require_relative 'deck'

class BlackJack
  attr_accessor :deck, :player, :dealer

  def initialize # Новая колода и сразу перетасовка
    @player = Player.new('')
    @dealer = BlackJackDealer.new('Dealer')
    @deck = Deck.new
    deck.shuffle
  end

  def initialize_player
    puts "What's your name?"
    player.name = gets.chomp
  end

  def deal_cards
    2.times do
      player.add_card(deck.deal)
      dealer.add_card(deck.deal)
    end
  end

  def get_hand_value(cards)
    hand_value = 0

    card_values = cards.map(&:value)
    aces_count = 0
    card_values.each do |value|
      if value == 'A' # Проверка туз
        hand_value += 11
        aces_count += 1
      elsif value.to_i == 0
        hand_value += 10
      else
        hand_value += value.to_i
      end
    end

    while aces_count > 0
      hand_value -= 10 if hand_value > 21
      aces_count -= 1
    end

    hand_value
  end

  def blackjack?(card_value)
    card_value == 21
  end

  def busted?(card_value)
    card_value > 21
  end

  def run
    puts 'Welcome to Twenty one.'
    initialize_player

    begin
      puts ''
      player.cards = []
      dealer.cards = []
      deal_cards

      player.show_cards
      dealer.hide_cards

      player_total = get_hand_value(player.cards)
      dealer_total = get_hand_value(dealer.cards)

      puts "Your hand value: #{player_total}"

      if blackjack?(player_total)
        puts 'You got twenty one! You win!'
      else

        while player_total < 21

          puts 'Do you wish to 1) hit or 2) stay?'
          hit_or_stay = gets.chomp

          if hit_or_stay.to_i == 1
            player.add_card(deck.deal)
            player.show_cards
            player_total = get_hand_value(player.cards)
            puts "Your hand value: #{player_total}"
          elsif hit_or_stay.to_i == 2
            break
          end

        end

        if busted?(player_total)
          puts 'You busted! You lose!'
        else

          dealer.show_cards
          puts "Dealer hand value: #{dealer_total}"
          if blackjack?(dealer_total)
            puts 'Dealer got twenty one! You lose!'
          else

            if dealer_total < 17
              while dealer_total < 17
                dealer.add_card(deck.deal)
                dealer_total = get_hand_value(dealer.cards)
              end

              dealer.show_cards
              puts "Dealer final hand value: #{dealer_total}"
            end

            if dealer_total > 21

              puts 'Dealer busted! You win!'
            elsif dealer_total == player_total
              puts 'You and Dealer push.'
            elsif dealer_total < player_total
              puts 'You win with a higher hand!'
            elsif dealer_total > player_total
              puts 'You lose! Dealer wins with a higher hand.'
            end

          end

        end

      end

      puts 'Do you want to play again? 1) yes'
      play_again = gets.chomp
    end while play_again.to_i == 1
  end
end

blackjack = BlackJack.new
blackjack.run
