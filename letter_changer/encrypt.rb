ALPHABET = ('A'..'Z').to_a # CONSTANT

def encrypt(text)
  text.split('').map do |letter|
    index = ALPHABET.index(letter)
    index ? ALPHABET[index - 3] : letter
  end.join
end
