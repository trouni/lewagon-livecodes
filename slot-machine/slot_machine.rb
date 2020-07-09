class SlotMachine
  SYMBOLS = %w[🍒 7️⃣ 🛎 ⭐️ 🤩]

  def initialize(reels = [])
    @reels = reels
  end

  def score
    # Check if all symbols of the reels are the same
    if three_of_the_same?
      symbol_value = SYMBOLS.index(@reels[0]) + 1
      return symbol_value * 10

    # Check if we have two of the same + joker
    elsif two_plus_joker?
      double_symbol = @reels.sort[1]
      symbol_value = SYMBOLS.index(double_symbol) + 1
      return symbol_value * 5

    # All other cases return zero points
    else
      return 0
    end
  end

  def play
    60.times do
      shuffle_reels
      print @reels.join("\t") + "\r"
      $stdout.flush
      sleep(0.03)
    end
    sleep(0.5)
    return @reels
  end

  private

  def three_of_the_same?
    @reels.uniq.size == 1
  end

  def two_plus_joker?
    @reels.uniq.size == 2 && @reels.include?('🤩')
  end

  def shuffle_reels
    @reels = []
    3.times { @reels << SYMBOLS.sample }
  end
end







