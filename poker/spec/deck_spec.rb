require "rspec"
require "deck.rb"

describe Deck do
  subject(:deck) { Deck.new }
  context "#initialize" do
    it "creates array of size 52" do
      expect(deck.cards.length).to eq(52)
    end
    it "deck has only unique cards" do
      expect(deck.cards).to eq(deck.cards.uniq)
    end
  end

  context "#draw_card" do
    it "removes one card from cards" do
      leng = deck.cards.length
      deck.draw_card
      expect(deck.cards.length).to eq(leng - 1)
    end
    it "Draw card from top of deck" do
      last_card = deck.cards.last
      expect(deck.draw_card).to eq(last_card)
    end
    it "Check if deck receives draw_card" do
      expect(deck).to receive(:draw_card)
      deck.draw_card
    end


  end


  # check cards.last for draw_car
  # add test for shuffle
  # make sure deck recieves draw_card
  # make sure deck has all uniq cards
end
