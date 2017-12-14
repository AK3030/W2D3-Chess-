class Hand
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def num_matches
    num = 0
    @cards.each do |i|
      matches = @cards.count(i)
      num = matches if matches > num
    end
    num

  end
end
