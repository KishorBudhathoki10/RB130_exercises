class SecretHandshake
  def initialize(num)
    @binary_num = convert_to_binary(num)
  end

  def commands
    return [] if @binary_num.zero?

    events = ['wink', 'double blink', 'close your eyes', 'jump']
    result = []

    @binary_num.digits.each_with_index do |n, idx|
      result.push(events[idx % 4]) if n == 1
    end

    result.uniq!
    @binary_num > 1000 ? result.reverse : result
  end

  private

  def convert_to_binary(num)
    if num.instance_of?(String)
      return 0 if num.match?(/[^01]/)
      num.to_i
    elsif num.instance_of?(Integer)
      num.to_s(2).to_i
    else
      raise ArgumentError
    end
  end
end
