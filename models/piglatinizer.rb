class PigLatinizer

  def piglatinize(word)
    non_words = ['i', 'me', 'to', 'too', 'a', 'an', 'in', 'and', 'on']
      vowels = ['a', 'e', 'i', 'o', 'u']

      if vowels.include? word[0]
        word + "ay"
      else
        constants = ""
        while !vowels.include? word[0]
          constants << word[0]
          word = word.split("")[1..-1].join
      end
        word + constants + "ay"
    end
  end

  def to_pig_latin(string)
    string.split.map {|word| piglatinize(word)}.join(" ")
  end
end
