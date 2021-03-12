begin
  require 'rspec/core/rake_task'
  require 'open3'

  desc 'Run test for exercise 1and2'
  RSpec::Core::RakeTask.new(:exercise1and2) do |t|
    t.pattern = Dir.glob "spec/exercise1and2_spec.rb"
  end

  desc 'Run test for exercise 3'
  task :exercise3 do
    system('cucumber', chdir: 'exercise3')
  end
rescue LoadError
  raise 'Looks like RSpec was not properly installed. Did you forget to run `bundle`?'
end

task :default => [:greet]

task :greet do
  puts 'You did it!'
  puts 'you should now be able to run the test for each exercise'
  puts 'with the command `rake exerciseX` where X is a number'
  puts 'try `rake exercise1` now or `rake --tasks` to see all tasks available'
end

