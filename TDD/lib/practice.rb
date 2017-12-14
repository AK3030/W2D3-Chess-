class Array

  def my_uniq
    result = []
    each do |el|
      result << el if !result.include?(el)
    end
    result
  end

  def two_sum
    result = []
    idx1 = 0
    while idx1 < self.length
      idx2 = idx1 + 1
      while idx2 < self.length
        result << [idx1, idx2] if self[idx1] + self[idx2] == 0
        idx2 += 1
      end
      idx1 += 1
    end
    result
  end

  def my_transpose
    result = Array.new(self.size) { Array.new(self.size) }
    idx1 = 0
    while idx1 < self.length
      idx2 = 0
      while idx2 < self.length
        result[idx2][idx1] = self[idx1][idx2]
        idx2 += 1

      end
      idx1 += 1
    end
    result
  end

  def stock_picker
    result = []
    g_diff = 0
    i = 0
    while i < self.length
      j = i+1
      while j < self.length
        val1 = self[i]
        val2 = self[j]
        if val2 - val1 > g_diff
          g_diff = val2 - val1
          result = [i,j]
        end
        j+=1
      end
      i += 1
    end
    result
  end

end

class TowersOfHanoi
  attr_accessor :pegs

  def initialize
    @pegs = [[3, 2, 1], [], []]
  end

  def move(start_pos, end_pos)
    if !@pegs[end_pos].last || (@pegs[end_pos].last > @pegs[start_pos].last)
      @pegs[end_pos] << @pegs[start_pos].pop
    end
  end

  def won?
    if @pegs[1].length == 3 || @pegs[2].length == 3
      return true
    end

    false
  end

end
