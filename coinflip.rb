class Coin
  def flip(score)
    if rand(2) == 1
      return 'tails'
    else
      score.total += 1
      return 'heads'
    end
  end

end

class Score
  attr_accessor :total
  def initialize
    @total = 0
  end
end
