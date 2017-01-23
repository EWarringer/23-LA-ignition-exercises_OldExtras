# Erik Warringer ~ Fall 2015 Submission

99.downto(3) do |bottles|

  punc = "."
  punc = "!" if bottles%10 == 0

    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer#{punc}"
    puts "Take one down and pass it around, #{bottles-1} bottles of beer on the wall."
    puts

end

puts "2 bottles of beer on the wall, 2 bottles of beer."
puts "Take one down and pass it around, 1 bottle of beer on the wall."
puts
puts "1 bottle of beer on the wall, 1 bottle of beer."
puts "Take one down and pass it around, no more bottles of beer on the wall."
puts
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
