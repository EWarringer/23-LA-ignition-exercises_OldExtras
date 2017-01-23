transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# * What is the value of the first transaction?
transactions.first
# * What is the value of the second transaction?
transactions[1]
# * What is the value of the fourth transaction?
transactions[3]
# * What is the value of the last transaction?
transactions.last
# * What is the value of the second from last transaction?
transactions[-2]
# * What is the value of the 5th from last transaction?
transactions[-5]
# * What is the value of the transaction with index 5?
transactions[5]
# * How many transactions are there in total?
transactions.count
# * How many positive transactions are there in total?
transactions.count {|i| i > 0}
# * How many negative transactions are there in total?
transactions.count {|i| i < 0}
# * What is the largest withdrawal?
transactions.min
# * What is the largest deposit?
transactions.max
# * What is the smallest withdrawal?
(transactions.select {|i| i < 0}).max
# * What is the smallest deposit?
(transactions.select {|i| i > 0}).min
# * What is the total value of all the transactions?
transactions.inject(:+)
# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
239900 + transactions.inject(:+)


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

# * How many records are in `best_records`?
best_records.size
# * Who are all the artists listed?
best_records.keys
# * What are all the album names in the hash?
best_records.values
# * Delete the `Eminem` key-value pair from the list.
best_records.delete "Eminem"
# * Add your favorite musician and their best album to the list.
best_records["The Beatles"] = "Abbey Road"
# * Change `Nirvana`'s album to another.
best_records["Nirvana"] = "Unplugged in New York"
# * Is `Nirvana` included in `best_records`?
best_records.key?("Nirvana")
# * Is `Soundgarden` included in `best_records`?
best_records.key?("Soundgarden")
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
best_records["Soundgarden"] ||= "Superunknown"
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
best_records.select { |key, value| key.length <= 6 }
# * Which key-value pairs have a value that is greater than 10 characters?
best_records.select { |key, value| value.length > 10 }
