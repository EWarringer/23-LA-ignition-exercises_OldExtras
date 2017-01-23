
def translate(sentence)
  array = sentence.split(" ")

  translation = []

  array.each do |word|
  if 'aeiou'.include? word[0]
    pig_latin = word + "way"
  else
    if !('aeiou'.include? word[1])
      if !('aeiou'.include? word[2])
        pig_latin = word[3..-1] + word[0..2] + "ay"
      else
        pig_latin = word[2..-1] + word[0..1] + "ay"
      end
    else
      pig_latin = word[1..-1] + word[0] + "ay"
    end
  end
  translation << pig_latin
  end

  sentence = translation.join(" ")
end

input = ARGV.join(" ")
puts translate(input)
