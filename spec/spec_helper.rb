require 'benchmark'
require 'pry'
require 'awesome_print'
include Benchmark

Dir['challenge_*.rb'].each do |f|
  require_relative "../#{f}"
end
