def reverse_odd(str)
  words = str.split
  words.map!.with_index do |word, idx|
    idx.odd? ? word.reverse : word
  end

  if words[-1] == '.'
    words.pop
    words[-1] = words[-1] + '.'
  end

  words.join(" ")
end
