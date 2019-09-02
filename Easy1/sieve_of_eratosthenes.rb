class Sieve
  def initialize(limit=0)
    @numbers = (2..limit).to_a
  end

  def primes
    idx = 0
    loop do
      break if idx >= numbers.length
      divisor = numbers[idx]
      numbers.select! { |num| num % divisor != 0 || num == divisor }
      idx += 1
    end

    numbers
  end

  private

  attr_reader :numbers
end
