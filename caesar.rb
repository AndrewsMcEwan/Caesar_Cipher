def caesar_cipher(string, shift)
  alphabet   = Array('a'..'z')
  encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
  string.downcase.chars.map { |c| encrypter.fetch(c, " ") }
end
  