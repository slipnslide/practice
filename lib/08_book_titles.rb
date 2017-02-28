class Book
  attr_reader :title


  def title=(t)
     @title = titleize(t)
  end

 def titleize(str)
  capitalized_array = []

  str.split.each_with_index do |word, index|
    capitalized_array << capitalize_word(word, (index == 0))
  end

  capitalized_array.join(" ")
end

LITTLE_WORDS = ["and", "or", "the", "over", "of", "in", "a", "an"]

def capitalize_word(str, force_cap)

  return str if LITTLE_WORDS.include?(str) && !force_cap

  char_array = str.split("")
  char_array[0] = char_array[0].upcase
  char_array.join("")
end

end
