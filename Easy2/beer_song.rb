class BeerSong
  def initialize
    @lines = create_hash
  end

  def verse(n)
    @lines[n].verse(n)
  end

  def verses(num1, num2)
    num1.downto(num2).map do |n|
      verse(n)
    end.join("\n")
  end

  def lyrics
    verses(99, 0)
  end

  private

  def create_hash
    lines = { 0 => VerseZero, 1 => VerseOne }
    2.upto(99) do |n|
      lines[n] = VerseDefault
    end
    lines
  end
end

module VerseZero
  def self.verse(n=nil)
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end

module VerseOne
  def self.verse(n=nil)
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end
end

module VerseDefault
  def self.verse(n)
    "#{n} bottles of beer on the wall, #{n} bottles of beer.\n" \
    "Take one down and pass it around, #{n - 1} #{n == 2 ? 'bottle' : 'bottles'} of beer on the wall.\n"
  end
end
