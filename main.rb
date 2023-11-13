# DEFINE THE MORSE CODE MAPPING 
MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

# BUILD CHARACTER DECODER
# takes a morse character as input and returns an English letter 
def decode_char(morse_char)
  MORSE_CODE[morse_char] || ''
end

# BUILD WORD DECODER
# takes a morse word as input and splits it as morse character
# then it decodes each characters to English letters and
# lastly joins the characters to form an English word
def decode_word(morse_word)
  morse_word.split.map { |morse_char| decode_char(morse_char) }.join
end

# BUILD MESSAGE DECODER
# takes a morse message as input and splits it into morse code words
# then it decodes each word into English letters and 
# lastly joins the English letters to form English words 
def decode(message)
  words = message.split('   ')
  words.map { |morse_word| decode_word(morse_word) }.join(' ')
end

# DECODE A SAMPLE MESSAGE
message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts decode(message)

# RUN THE PROGRAM
# ruby morse_decode.rb
