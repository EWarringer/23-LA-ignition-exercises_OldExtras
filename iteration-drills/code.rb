
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# TURNING .each INTO ENGLISH
#
# 1. In the array 'numbers', multiply every element by 3 and print out the product.
# 2. In the array 'names', print out how many characters are in each element.
# 3. In the array 'numbers', add all the elements together and print out the sum.
# 4. For each key 'name' and value 'age' in the hash 'hash', print out a sentence that tells us their name and age.
# 5. In the key-value hash 'account', print a sentence that tells the total sum of all values.
# 6. For each key-value ('name'-'address') pair in the hash 'addresses', print a sentence that displays the name and address.
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# TURNING .each INTO ENGLISH
#
# ~ 1 ~ For every element 'word' in the array 'sentences' print out the word.
#
# sentences.each do |word|
#   puts word
# end
#
# ~ 2 ~ For every element 'phone_number' in the array 'numbers' print out the phone number if it is a MA area code.
#
# numbers.each do |phone_number|
#   area = phone_number.to_s.gsub(/[^\d]/, '')[0..2]
#   mass = ["339", "351", "413", "508", "617", "774", "781", "857", "978"]
#   puts phone_number if mass.include? area
# end
#
# ~ 3 ~ For every element number in the array 'numbers' print out every odd number.
#
# numbers.each do |number|
#   puts number if number.odd?
# end
#
# ~ 4 ~ For every name-age pair in the hash 'ages', print out each pair.
#
# ages.each do |name, age|
#   puts "Name: #{name}"
#   puts "Age: #{age}"
# end
#
# ~ 5 ~ For every name-age pair in the hash 'ages', print out a pair if the age is > 10.
#
# ages.each do |name, age|
#   if age > 10
#     puts "\nName: #{name}"
#     puts "Age: #{age}"
#   end
# end
#
# ~ 6 ~ For every name-age pair in the hash 'ages', print out a pair if the age is even.
#
# ages.each do |name, age|
#   if age.even?
#     puts "\nName: #{name}"
#     puts "Age: #{age}"
#   end
# end
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# * What is the sum of all the numbers in `array`?
array.inject(:+)
# * How would you print out each value of the array?
array.each { |value| puts value }
# * What is the sum of all of the even numbers?
(array.select { |i| i.even? }).inject(:+)
# * What is the sum of all of the odd numbers?
(array.select { |i| i.odd? }).inject(:+)
# * What is the sum of all the numbers divisible by 5?
(array.select { |i| i%5==0 }).inject(:+)
# * What is the sum of the squares of all the numbers in the array?
(array.map { |i| i*i }).inject(:+)

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #


array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# * How would you print out each name backwards in `array`?
array.each do |i|
  puts i.reverse
end
# * What are the total number of characters in the names in `array`?
sum = 0
array.each do |i|
  sum += i.length
end
puts sum
#or
puts (array.map {|i| i.length}).inject(:+)
# * How many names in `array` are less than 5 characters long?
(array.select { |i| i.length < 5 }).length
# * How many names in `array` end in a vowel?
(array.select { |i| "aeiou".include? i[-1]}).length
# * How many names in `array` are more than 5 characters long?
(array.select { |i| i.length > 5 }).length
# * How many names in `array` are exactly 5 characters in length?
(array.select { |i| i.length == 5 }).length

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# * How would you print out all the names of the artists?
best_records.each { |artist, album| puts artist }
# * How would you print out all the names of the albums?
best_records.each { |artist, album| puts album }
# * Which artist has the longest name?
best_records.each do |artist, album|
  if artist.length == (best_records.keys.map { |i| i.length }).max
    puts artist
  end
end
# * How would you change all the album titles for every artist to `Greatest Hits`?
best_records.each { |artist, album| best_records[artist] = "Greatest Hits" }
# * How would you delete a key-value pair if the artist's name ends in a vowel?
best_records.delete_if { |artist, album| "aeiou".include? artist[-1]}

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

ages = {"Arch"=>89, "Gretchen"=>93, "Simone"=>12, "Daija"=>96, "Alivia"=>22, "Serena"=>28, "Alek"=>3, "Lula"=>24, "Christian"=>62, "Darryl"=>47, "Otha"=>32, "Evalyn"=>44, "Lincoln"=>27, "Rebeca"=>99, "Beatrice"=>99, "Kelton"=>10, "Zachary"=>18, "Aurelie"=>91, "Dell"=>71, "Lisandro"=>22}

# * How would you print out all the names of `ages`?
ages.each { |name, age| puts name }
# * How would you print out each key-value pair in the format of `<name> is <age> years old.`?
ages.each { |name, age| puts "#{name} is #{age} years old."}
# * How would you print out every person with odd numbered age?
ages.each do |name, age|
  if age.odd?
    puts name
  end
end
# * How would you delete everyone under 25 years of age?
ages.delete_if { |name, age| age < 25}
# * What is the name and age of everyone with a name greater than or equal to 5 characters?
ages.each do |name, age|
  if name.length > 5
    puts "\nName: #{name}"
    puts "Age: #{age}"
  end
end

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Dominick",
          "Tricia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nietzsche and Dickinson"
  }
}

# * How would you print out all the names of `people`?
people.each {|a, b| puts a}
# * How would you print out all the names of `people` and which company they work for?
people.each do |name, info|
  puts "\nName: #{name}"
  puts "Company: #{info["company"]}"
end
# * What are the names of all the children of everyone in `people`?
people.each {|name, info| info["children"]}
# * What are the names of all the companies that people work for?
people.each {|name, info| info["company"]}
# * How would you convert all the phone numbers to the same standard (pick one)?
people.each do |name, info|
  number = info["phone"].to_s.gsub(/[^\d]/, '')
  if number.length == 11
    info["phone"] = number[1..-1] if number.length == 11
  else
    info["phone"] = number
  end
end


people =
[
    {
          "Derek Wehner" => {
               "phone" => "588-047-7782",
             "company" => "Daniel-Carroll",
            "children" => [
                "Phoebe",
                "Gretchen",
                "Wiley"
            ]
        },
           "Ali Koelpin" => {
               "phone" => "1-127-057-0020",
             "company" => "Rau, Rutherford and Lockman",
            "children" => [
                "Juwan"
            ]
        },
        "Ervin Prohaska" => {
               "phone" => "(393) 630-3354",
             "company" => "Carter Inc",
            "children" => [
                "Virgil",
                "Piper",
                "Josianne"
            ]
        },
          "Hellen Borer" => {
              "phone" => "1-687-825-0947",
            "company" => "Maggio, Ferry and Moen"
        }
    },
    {
        "Elinor Johnson" => {
              "phone" => "819.911.5553",
            "company" => "Pollich Group"
        }
    },
    {
        "Richmond Murray" => {
               "phone" => "1-516-432-2364",
             "company" => "Sporer and Sons",
            "children" => [
                "Kade",
                "Sage"
            ]
        },
            "Nakia Ferry" => {
               "phone" => "134-079-2237",
             "company" => "Hamill, O'Keefe and Lehner",
            "children" => [
                "Rollin"
            ]
        }
    }
]

# * What are the names of everyone in `people`?
people.each do |person|
  person.each {|name, info| puts name}
end
# * What are the names of all the children in `people`?
people.each do |person|
  person.each {|name, info| puts info["children"]}
end
# * How would you create a new hash called `phone_numbers` that has a key of a name and value of a phone number in `people`?
phone_numbers = {}
people.each do |hash|
  hash.each do |name, info|
    phone_numbers[name] = info["phone"]
  end
end
# * How would you create a new hash called `employers` that has a key of a name and a value of a company name in `people`?
employers = {}
people.each do |hash|
  hash.each do |name, info|
    employers[name] = info["company"]
  end
end
# * How would you create a new hash called `children_count` that has a key of a name and a value of the number of children a person has?
children_count = {}
people.each do |hash|
  hash.each do |name, info|
    if info["children"].nil?
      children_count[name] = 0
    else
      children_count[name] = info["children"].length
    end
  end
end
