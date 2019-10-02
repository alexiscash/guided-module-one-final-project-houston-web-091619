require_relative 'config/environment'
require_relative 'bin/run'
require_relative 'bin/test'
require 'sinatra/activerecord/rake'


desc 'starts a console'
task :console do
  Pry.start
end

desc 'executes the run.rb file and takes you for a ride'
task :run do
  run
end

desc 'run the dumb test stuff'
task :test do 
  test
end