def isvowel?(letter)
  %w[a e i o u].include?(letter)
end

def piglatinize_word(word)
  return word if word.length <= 1
  if isvowel?(word[0])
    word + %w[ay way hay yay nay].sample
  else
    first_vowel_index = word.downcase.chars.index { |letter| isvowel? letter }
    beginning = word[0...first_vowel_index].downcase
    ending = word[first_vowel_index...word.size].downcase
    "#{ending}#{beginning}ay"
  end
end

def piglatinize(sentence)
  piglatinized = []
  words = sentence.split(/\b/)
  words.each do |word|
    if word =~ /\W/
      piglatinized << word
    else
      piglatinized << piglatinize_word(word)
    end
  end
  piglatinized.join
end

p piglatinize('eat')
