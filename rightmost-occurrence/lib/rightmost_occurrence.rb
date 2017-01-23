def rightmost_occurrence(string, letter)

  puts string.length - (string.reverse.index(letter) + 1)

end

rightmost_occurrence("abc", "c")
