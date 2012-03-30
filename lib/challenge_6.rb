class Challenge6

  def self.mapping code
    {
      '.-'      => 'A',
      '-...'    => 'B',
      '-.-.'    => 'C',
      '-..'     => 'D',
      '.'       => 'E',
      '..-.'    => 'F',
      '--.'     => 'G',
      '....'    => 'H',
      '..'      => 'I',
      '.---'    => 'J',
      '-.-'     => 'K',
      '.-..'    => 'L',
      '--'      => 'M',
      '-.'      => 'N',
      '---'     => 'O',
      '.--.'    => 'P',
      '--.-'    => 'Q',
      '.-.'     => 'R',
      '...'     => 'S',
      '-'       => 'T',
      '..-'     => 'U',
      '...-'    => 'V',
      '.--'     => 'W',
      '-..-'    => 'X',
      '-.--'    => 'Y',
      '--..'    => 'Z'
    }[code]
  end

  def self.morse_to_eng morse
    message = []
    morse.split('   ').each do |words|
      message << words.split(' ').collect do |char|
        mapping(char)
      end.join
    end
    message.join(' ')
  end
end
