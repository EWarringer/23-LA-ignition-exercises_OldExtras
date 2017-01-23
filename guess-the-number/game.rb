
number = rand(1..500)

while true
  print "\nGuess the number I am thinking of between 1 and 1000: "
  guess = gets.chomp.to_i

  if guess > number
    puts "TOO HIGH, try again!"
  elsif guess < number
    puts "TOO LOW, try again!"
  else
    break
  end

end

puts "\nGOOD JOB, you guessed it!\n"
