module Effects
  def self.reverse
    # ラムダをメソッドの戻り値にする
    -> (words) do
      words
        .split(' ')
        .map(&:reverse)
        .join(' ')
    end
  end

  def self.echo(rate)
    # ラムダをメソッドの戻り値にする
    -> (words) do
      words
        .chars
        .map { |c| c == ' ' ? c : c * rate }
        .join
    end
  end

  def self.loud(level)
    # ラムダをメソッドの戻り値にする
    -> (words) do
      words
        .split(' ')
        .map { |word| word.upcase + '!' *  level }
        .join(' ')
    end
  end
end