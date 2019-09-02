class Integer
  def to_roman
    thousands, remainder = self.divmod(1000)
    hundreds, remainder = remainder.divmod(100)
    tens, ones = remainder.divmod(10)

    roman = ''
    roman += 'M' * thousands
    roman = hundreds_to_roman(roman, hundreds)
    roman = tens_to_roman(roman, tens)
    roman = ones_to_roman(roman, ones)
    roman
  end

  private

  def hundreds_to_roman(roman, hundreds)
    if hundreds == 9
      roman += 'CM'
    elsif hundreds >= 5
      hundreds = hundreds % 5
      roman += 'D' + 'C' * hundreds
    elsif hundreds == 4
      roman += 'CD'
    else
      roman += 'C' * hundreds
    end

    roman
  end

  def tens_to_roman(roman, tens)
    if tens == 9
      roman += 'XC'
    elsif tens >= 5
      tens = tens % 5
      roman += 'L' + 'X' * tens
    elsif tens == 4
      roman += 'XL'
    else
      roman += 'X' * tens
    end

    roman
  end

  def ones_to_roman(roman, ones)
    if ones == 9
      roman += 'IX'
    elsif ones >= 5
      ones = ones % 5
      roman += 'V' + 'I' * ones
    elsif ones == 4
      roman += 'IV'
    else
      roman += 'I' * ones
    end

    roman
  end
end
