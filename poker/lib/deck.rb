require 'card'

class Deck
  attr_reader :cards
  def initialize
    @cards = []
    populate_deck
  end

  def draw_card
    @cards.pop
  end

  def shuffle_deck
    @cards.scramble
  end

  private
  def populate_deck
    values = (1..13).to_a
    suits = ["Clubs","Diamonds","Hearts","Spades"]
    values.each do |val|
      suits.each do |suit|
        @cards << Card.new(val, suit)
      end
    end
  end


end
