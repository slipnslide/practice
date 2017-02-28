def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, num=2)
   ("#{word} " * num).strip
end

def start_of_word(word, index)
  word[0..index-1]
end

def first_word(string)
  string.split.first
end

def titleize(str)
  capitalized_array = []

  str.split.each_with_index do |word, index|
    capitalized_array << capitalize_word(word, (index == 0))
  end

  capitalized_array.join(" ")
end

LITTLE_WORDS = ["and", "or", "the", "over"]

def capitalize_word(str, force_cap)

  return str if LITTLE_WORDS.include?(str) && !force_cap

  char_array = str.split("")
  char_array[0] = char_array[0].upcase
  char_array.join("")
end


