require 'pry'
class PigLatinizer

  attr_accessor :input 

  def initialize
    
  end

  def piglatinize(sentence)
    x = sentence.split(" ").map {|word| piglatinize_word(word)}
    x.join(" ")
  end

  def piglatinize_word(word)
  
    if is_vowel?(word.split("").first)
      word.concat("way")
    else
      if find_first_vowel(word) != nil
        index = find_first_vowel(word)
      else
        index = 0
      end

      x = word.split("")
      x.shift(index)
      x << word.split("").first(index)
      x << "ay".split("")
      x.flatten.join("")

    end
  end

  def find_first_vowel(word)
    word.split("").find_index do |letter|
      is_vowel?(letter)
    end
  end

  def is_vowel?(letter)
    true if ["a", "e", "i", "o", "u", "A", "O", "U", "I", "E"].include?(letter)
  end


end