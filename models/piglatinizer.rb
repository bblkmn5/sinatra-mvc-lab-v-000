class PigLatinizer

  def piglatinize(word)
    if word =~ (/\A[aeiou]/i)
    word = word + 'ay'
  elsif word =~ (/\A[^aeiou]/i)
    match = /\A[^aeiou]/i.match(word)
    word = match.post_match + match.to_s + 'ay'
  end
  word
    # alpha = ('a'..'z').to_a
    # vowels = ['a', 'e', 'i', 'o', 'u']
    # consonants = alpha - vowels
    #   if non_words.include?(word)
    #     word << "way"
    #   elsif vowels.include? word[0]
    #     word << "ay"
    #   else
    #     while !vowels.include? word[0]
    #       consonants << word[0]
    #       word = word.split("")[1..-1].join
    #   end
    #     word + consonants + "ay"
    # end
  end

  def to_pig_latin(string)
    string.split.map {|word| piglatinize(word)}.join(" ")
  end
end
