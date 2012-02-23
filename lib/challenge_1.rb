class Challenge1

  def self.split_key input
    n = ''

    input.split('').each_with_index do |x, y| 

      y += 1

      if (y != 0 && y != input.length && y % 5 == 0)
        n += "#{x}-"
      else
        n += x
      end
    end

    n
  end
end