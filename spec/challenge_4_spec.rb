require 'spec_helper'

require_relative '../lib/challenge_4.rb'

describe Challenge4 do

  describe '.longest_possible' do

    pending do 
      [
        [ 'daad', 'daad' ],

      ] .each do |input, output|

        it "should return '#{output}' given '#{input}'" do
          Challenge4.longest_possible(input).should == output
        end

      end
    end
  end
end