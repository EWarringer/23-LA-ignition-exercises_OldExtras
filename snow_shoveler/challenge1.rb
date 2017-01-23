print "How long is your driveway in feet? "
length = gets.chomp.to_i
print "How wide is your driveway in feet? "
width = gets.chomp.to_i
print "How high is the snow in inches? "
height = gets.chomp.to_f / 12

cubic_feet = length * width * height

if cubic_feet <= 50
  price = 20
elsif cubic_feet <= 150
  price = 50
elsif cubic_feet <= 300
  price = 100
else
  price = 150
end

puts "The price for your driveway will be $#{price}"
