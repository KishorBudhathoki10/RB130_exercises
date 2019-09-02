class PigLatin
  class << self
    def translate(str)
      str.split(' ')
         .map { |word| convert_accordingly(word) }
         .join(' ')
    end

    private

    def convert_accordingly(word)
      if word.match(/\A[xy][^aeiou]/)
        word + 'ay'
      elsif word.match?(/^[^aeiou]*qu/)
        starter = word.scan(/^[^aeiou]*qu/).first
        word[starter.length..-1] + starter + 'ay'
      else
        convert_word_outside_edgecases(word)
      end
    end

    def convert_word_outside_edgecases(word)
      starting_letters_without_vowel = word.scan(/^[^aeiou]*/).first
      len = starting_letters_without_vowel.length
      word[len..-1] + starting_letters_without_vowel + 'ay'
    end
  end
end
