# PART I

puts "Knife Juggling:"
# I'm not sure why the result in the terminal is coming up 11.870000000000001
# for me instead of 11.87
knife = 2.10 + 0.77 + 5.00 + 1.00 + 3.00
puts knife

puts "Torch Juggling:"
torch = 6.00 + 3.50 + 7.00
puts torch

puts "Hand Balancing:"
hand = 2.00 + 1.00
puts hand

puts "Human Blockhead:"
human = 0.75 + 0.43
puts human
puts

puts "Total:"
total = knife + torch + hand + human
puts total

puts "Average:"
puts total / 4
puts

# Part II

puts "Ladies and Gentlemen, I am going to need a volunteer from the audience please!"
puts "You, in the blue hat! Come up here... and what is your name?"
name = gets.chomp.capitalize
puts "What a great name! Let's have a big round of applause for " + name + "!"
puts "Alright, " + name + "... what is your favorite number?"
num = gets.chomp
puts "Ok then, " + name + ", looks like we'll be juggling these knives around you for " + num + " seconds!"
