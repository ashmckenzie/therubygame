class Challenge5

  def self.convert roman
    
    total = 0
    i = 0
    letters = roman.split('')
    original = letters.clone

    mappings = {
      'I' => 1, 
      'V' => 5, 
      'X' => 10, 
      'L' => 50, 
      'C' => 100, 
      'D' => 500, 
      'M' => 1000
    }

    loop do
      break unless c = letters.shift
      if i > 0 && mappings[original[i+1]] && mappings[original[i+1]] > mappings[c]
        total += (mappings[original[i+1]] - mappings[c])
        letters.shift
        i += 1
      else
        total += mappings[c]
      end

      i += 1
    end
      
    total
  end
end