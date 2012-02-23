require 'spec_helper'

require_relative '../lib/challenge_5.rb'

describe Challenge5 do

  describe '.convert' do

    [[ 'MCMXCIX', 1999 ]] .each do |input, output|
      it "should convert '#{input}' to '#{output}'" do
        Challenge5.convert(input).should == output
      end
    end
    
  end

end