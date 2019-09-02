class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples.empty? ? [3, 5] : multiples
  end

  def self.to(limit)
    new.to(limit)
  end

  def to(limit)
    (@multiples.min..limit - 1).inject(0) do |sum, number|
      sum += number if @multiples.any? { |divider| number % divider == 0 }
      sum
    end
  end
end
