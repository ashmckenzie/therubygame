require 'spec_helper'

require_relative '../lib/challenge_1.rb'

describe 'Challenge1' do

  describe '.split_key' do

    let(:input) { 'ABCDEFGHIJKLMNOPQRSTUVWXY' }
    let(:output) { 'ABCDE-FGHIJ-KLMNO-PQRST-UVWXY' }

    let(:fastest_run) { 0.238322 }

    context 'accurate' do
      subject { Challenge1.split_key(input) }
      it { should == output }
    end

    context 'performance' do
      subject { Benchmark.measure { Challenge1.split_key(input) }.real }
      it { should < fastest_run }
    end
    
  end
end