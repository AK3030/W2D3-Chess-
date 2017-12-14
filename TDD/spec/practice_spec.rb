require 'rspec'
require 'practice'

describe Array do
  let(:arr) { Array.new }

  context "#my_uniq" do


    it "returns array" do
      expect(arr.my_uniq).to be_an_instance_of(Array)
    end

    it "returns a unique array" do
      arr2 = [1, 2, 1, 3, 3]
      expect(arr2.my_uniq).to eq([1, 2, 3])
    end
  end

  context "#two_sum" do
    it "all returned elements are arrays" do
      arr2 = [-1, 0, 2, -2, 1]
      expect(arr2.two_sum.all? { |el| el[0] < el[1] }).to eq(true)
    end

    it "returns correct test example" do
      arr2 = [-1, 0, 2, -2, 1]
      expect(arr2.two_sum).to eq([[0, 4], [2, 3]])
    end

    it "returns empty array if empty array is passed " do
      expect(arr.two_sum).to eq([])
    end

  end

  context "#my_transpose" do
    let(:matrix) { [ [0, 1, 2], [3, 4, 5], [6, 7, 8] ] }
    it "does not modify original array" do
      arr = matrix.my_transpose
      expect(matrix.object_id).to_not eq(arr.object_id)
    end

    it "does not use transpose method" do

      expect(matrix).to_not receive(:transpose)
      matrix.my_transpose
    end

    it "returns correct answer" do
      expect(matrix.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])

    end
  end

  context "#stock_picker" do
    let(:stock_prices) { [100, 105, 110, 104, 96, 92, 120, 150, 76, 89] }
    it "left index is smaller than right index" do
      result = stock_prices.stock_picker
      expect(result[0] <= result[1]).to eq(true)
    end

    it "returns most profitable trade" do
      expect(stock_prices.stock_picker).to eq([5, 7])
    end

  end

end

describe TowersOfHanoi do
  let(:towers) { TowersOfHanoi.new }

  context "#initialize" do
    it "Check if pegs is a array of length 3" do
      expect(towers.pegs.length).to eq(3)
    end
    it "Check if individual pegs are arrays" do
      expect(towers.pegs.all? { |el| el.is_a?(Array) } ).to eq(true)
    end
    it "Check if 3 disks are in the first peg" do
      expect(towers.pegs[0].length).to eq(3)
    end
  end

  context "#move" do
    it "starting array loses one disk" do
      start_pos = 0
      start_pos_length = towers.pegs[start_pos].length - 1
      towers.move(0,1)
      expect(start_pos_length).to eq (towers.pegs[start_pos].length)
    end

    it "moves correct disk" do
      start_pos = 0
      end_pos = 2
      moved_disk = towers.pegs[start_pos].last
      towers.move(start_pos,end_pos)
      expect(towers.pegs[end_pos].last).to eq(moved_disk)
    end

    it "does not allow larger disk above smaller disk" do
      towers.move(0,1)
      towers.move(0,1)
      expect(towers.pegs.all? {|peg| peg == peg.sort.reverse}).to eq(true)
    end
  end

  context "#won?" do
    it "returns true if 2 or 3 are full" do
      towers.pegs = [[], [3,2,1], []]
      expect(towers.won?).to eq(true)
    end

    it "returns false if more than one peg has disks" do
      num = 0
      towers.pegs = [[3],[2,1],[0]]
      expect(towers.won?).to eq(false)
    end 
  end


end
