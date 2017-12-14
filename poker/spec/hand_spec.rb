require "rspec"
require "hand"
require "card"

describe Hand do
  let(:cards) {[Card.new(3,"Hearts"), Card.new(3, "Clubs"),
  Card.new(1, "Spades"), Card.new(10, "Diamonds"), Card.new(7, "Hearts")]}

  subject(:hand) {Hand.new(cards)}

  context "#initialize" do
    it "hand has array of length 5" do
      expect(hand.cards.length).to eq(5)
    end
  end

  context "#num_matches" do
    it "checks if hand has a pair" do
      expect(cards.num_matches).to eq(2)
    end
  end

  

end
