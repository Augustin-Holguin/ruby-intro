#Algorithme de chiffrement: chiffre_de_cesar

puts "What do you wish to encrypt?"
input = gets.chomp.downcase

puts "Can you give me a number?"
n = gets.chomp.to_i

def caesar_cipher(input, n)
  alphabet = ('a'..'z').to_a
  key = Hash[alphabet.zip(alphabet.rotate(n))]
  input.each_char.inject("") { |newtext, char| newtext + key[char] }
end

puts caesar_cipher(input, n)
