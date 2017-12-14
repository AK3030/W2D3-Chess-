require 'card.rb'
require 'rspec'

describe Card do
  context "#initialize" do
    subject(:card) { Card.new(5, "hearts") }
    it "creates object of type card" do
      expect(card).to be_an_instance_of(Card)
    end
    it "test attributes of Card" do
      expect(card.val).to eq(5)
      expect(card.suit).to eq("hearts")
    end
  end
end
