require 'rspec/core/rake_task'
task default: %w[run]

task :run do
  ruby 'lib/run.rb'
end

desc 'Run user statistics'
task :user_run do
  ruby 'lib/run.rb'
  ruby 'lib/user_run.rb'
end

desc 'Run post statistics'
task :post_run do
  ruby 'lib/run.rb'
  ruby 'lib/post_run.rb'
end

desc 'Run comment statistics'
task :comment_run do
  ruby 'lib/run.rb'
  ruby 'lib/comment_run.rb'
end

desc 'Run Rspec tests'
task :test do
  RSpec::Core::RakeTask.new(:spec)
  Rake::Task['spec'].execute
end
