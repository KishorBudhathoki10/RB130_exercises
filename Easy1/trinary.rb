class Trinary
  def initialize(trinary_str)
    @trinary = trinary_str.match?(/[^0-2]/i) ? 0 : trinary_str.to_i
  end

  def to_decimal
    @trinary
      .digits
      .map
      .with_index { |digit, idx| digit * (3 ** idx) }
      .sum
  end
end
