require 'simplecov'

SimpleCov.start do
  add_filter '/spec/'
end
require_relative '../lib/init.rb'
require_relative '../lib/user.rb'
