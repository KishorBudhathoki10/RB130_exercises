class PerfectNumber
  def self.classify(num)
    raise RuntimeError if num < 1

    aliquot_sum = 0
    1.upto(num / 2) do |n| # there is no factor of number which will be greater than its 50% so I do num / 2 here.
      aliquot_sum += n if num % n == 0
    end

    return 'deficient' if aliquot_sum < num
    return 'abundant'  if aliquot_sum > num
    'perfect'
  end
end
