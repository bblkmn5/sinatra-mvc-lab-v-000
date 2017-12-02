class PigLatinizer

  def piglatinize(word)
    non_words = ['I', 'me', 'to', 'too', 'a', 'an', 'in', 'and', 'on']
    alpha = ('a'..'z').to_a
    vowels = ['a', 'e', 'i', 'o', 'u']
    consonants = alpha - vowels
      if non_words.include?(word)
        word << "way"
      elsif vowels.include? word[0]
        word << "ay"
      else
        while !vowels.include? word[0]
          consonants << word[0]
          word = word.split("")[1..-1].join
      end
        word + constants + "ay"
    end
  end

  def to_pig_latin(string)
    string.split.map {|word| piglatinize(word)}.join(" ")
  end
end
