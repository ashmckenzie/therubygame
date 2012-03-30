require 'spec_helper'

describe Challenge6 do

  describe '.convert' do

    @expectations = [
      [ '.... . .-.. .--.   -- .   --- ..- -   --- ..-.   - .... .. ...   .-- . .-.. .-..', 'HELP ME OUT OF THIS WELL' ],
      [ '.--. .-.. . .- ... .   .-- --- .-. -.-', 'PLEASE WORK' ]
    ]

    @expectations.each do |input, output|
      it "should convert '#{input}' to '#{output}'" do
        Challenge6.morse_to_eng(input).should == output
      end
    end
    
  end

end
