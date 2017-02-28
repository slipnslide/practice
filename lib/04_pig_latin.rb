VOWELS = %w(a e i o u)
def translate_word(word)
letters = word.chars
  if VOWELS.include?(letters.first)
   return word + 'ay'
 else
    until VOWELS.include?(letters.first)
      if letters[0..1] == ['q','u']
        letters << letters.shift(2)
      else
      letters << letters.shift
      end
    end
    letters.join('') + 'ay'
  end

end

def translate(sentence)
  word_array = sentence.split
  word_array.map { |word| translate_word(word.downcase) }.join(' ')
end




