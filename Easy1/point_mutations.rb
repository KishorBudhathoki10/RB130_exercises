class DNA
  def initialize(word)
    @word = word
  end

  def hamming_distance(word)
    count = 0
    @word.each_char.with_index do |letter, idx|
      return count if word[idx] == nil
      count += 1 if letter != word[idx]
    end
    count
  end
end
