MORSE_CODE = {
  '.-'    => 'A', 
  '-...'  => 'B',
  '-.-.'  => 'C',
  '-..'   => 'D',
  '.'     => 'E',
  '..-.'  => 'F',
  '--.'   => 'G',
  '....'  => 'H',
  '..'    => 'I',
  '.---'  => 'J',
  '-.-'   => 'K',
  '.-..'  => 'L',
  '--'    => 'M',
  '-.'    => 'N',
  '---'   => 'O',
  '.--.'  => 'P',
  '--.-'  => 'Q',
  '.-.'   => 'R',
  '...'   => 'S',
  '-'     => 'T',
  '..-'   => 'U',
  '...-'  => 'V',
  '.--'   => 'W',
  '-..-'  => 'X',
  '-.--'  => 'Y',
  '--..'  => 'Z',
}
def decode_char(morse_char)
    MORSE_CODE[morse_char] || ''
  end
