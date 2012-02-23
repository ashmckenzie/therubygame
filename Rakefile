require 'rubygems'
require 'pry'
require 'linguistics'
require 'rspec/core/rake_task'

Linguistics::use( :en )

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = '-c -f d -p'
end

namespace :challenges do
  Dir["spec/challenge_*_spec.rb"].each do |f|
    if m = f.match(/challenge_(\d+)_spec\.rb/)
      desc "Challenge #{m[1]}"
      task m[1].en.numwords.to_sym do
        exec 'SPEC="' + f + '" rake spec'
      end
    end
  end
end

task :default => :spec
