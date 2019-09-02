class Series
  def initialize(str_of_digits)
    @str_of_digits = str_of_digits
  end

  def slices(num)
    raise ArgumentError if num > @str_of_digits.length
    @str_of_digits.chars
                  .map(&:to_i)
                  .each_cons(num)
                  .to_a
  end
end
