p_score = 0 && c_score = 0

while p_score < 2 && c_score < 2
  puts "\nPlayer Score: #{p_score}, Computer Score: #{c_score}"
  print "Choose rock (r), paper (p), or scissors (s): "
  player = gets.chomp
  cpu = ["rock", "paper", "scissors"].sample

  if player.downcase == "r"
    player = "rock"
  elsif player.downcase == "p"
    player = "paper"
  elsif player.downcase == "s"
    player = "scissors"
  else
    puts "You have not typed a valid response."
    redo # "redo" starts the while loop over, while saving the score
  end

  puts "Player chose #{player}."
  puts "Computer chose #{cpu}."

  if player=="rock"&&cpu=="scissors" || player=="paper"&&cpu=="rock" || player=="scissors"&&cpu=="paper"
    p_score += 1
    puts "#{player.capitalize} beats #{cpu}, player wins the round."
  elsif player == cpu
    puts "Tie, choose again"
  else
    c_score += 1
    puts "#{cpu.capitalize} beats #{player}, computer wins the round."
  end
end

puts p_score > 1 ? "\nPlayer wins!" : "\nComputer wins!"
