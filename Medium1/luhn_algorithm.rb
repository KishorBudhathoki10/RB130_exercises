class Luhn
  def initialize(num=0)
    raise ArgumentError unless num.instance_of?(Integer)
    @num = num
  end

  def self.create(num)
    num = num.digits.reverse
    n = 0

    loop do
      num = num.push(n)
      break if Luhn.new(num.join.to_i).valid?
      num.pop
      n += 1
    end

    num.join.to_i
  end

  def addends
    @num.digits
        .map
        .with_index { |n, idx| convert_digit_with_odd_index(n, idx) }
        .reverse
  end

  def checksum
    addends.sum
  end

  def valid?
    checksum % 10 == 0
  end

  private

  def convert_digit_with_odd_index(n, idx)
    n *= 2 if idx.odd?
    n > 10 ? n - 9 : n
  end
end
