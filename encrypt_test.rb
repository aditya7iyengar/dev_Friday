# C = (P+2)mod(P+1)

def char_to_int(character)
  alphabets_array = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
                     'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
                     'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
                     'Y', 'Z']

  if alphabets_array.index(character.upcase)
    integer = alphabets_array.index(character.upcase)
  else
    raise NotImplementedError, "char_to_int not implemented for #{character}."
  end

  return integer
end

def int_to_char(integer)
  alphabets_array = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
                     'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
                     'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
                     'Y', 'Z']

  if alphabets_array[integer]
    character = alphabets_array[integer]
  else
    raise NotImplementedError, "int_to_char not implemented for #{integer}."
  end

  return character
end

def inner_function(plain_text_integer, modulo_base)
  (plain_text_integer + 2) % modulo_base
end

def encrypt_function(plain_text)
  plain_text_length = plain_text.length
  cipher_text = ''

  plain_text.split("").each do |plain_text_character|
    plain_text_integer = char_to_int(plain_text_character)
    cipher_text_integer = inner_function(plain_text_integer, plain_text_integer + 1)
    cipher_text_character = int_to_char(cipher_text_integer)

    cipher_text << cipher_text_character
  end

  puts "#{plain_text.upcase} ==>> #{cipher_text}"
end

encrypt_function(ARGV[0])
