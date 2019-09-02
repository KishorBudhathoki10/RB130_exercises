class Phrase
  def initialize(str)
    @str = str
    @words = str.downcase.split(/[^a-z0-9']+/i)
  end

  def word_count
    delete_whole_quotations_from_words! # deletes quotations if whole, 'kishor' deletes quotations but not in kishor'.
    @words.each_with_object(Hash.new(0)) do |word, hsh|
      hsh[word] += 1
    end
  end

  private

  def delete_whole_quotations_from_words!
    @words.each do |word|
      word.gsub!(/(['"])([a-z0-9]+)\1/, '\2')
    end
  end
end
