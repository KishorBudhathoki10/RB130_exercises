class Octal
  BASE = 8

  def initialize(octal)
    @octal = octal.match?(/[a-z89]/i) ? 0 : octal.to_i
  end

  def to_decimal
    @octal.digits
          .map
          .with_index { |digit, idx| digit * (BASE**idx) }
          .sum
  end
end
