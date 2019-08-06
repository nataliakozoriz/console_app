require_relative 'user'
require_relative 'post'
require_relative 'init'
require_relative 'comments'
require_relative 'request'
require_relative 'url'
# This module runs user statistics
module UserRun
  extend Url
  def self.run
    user_stat = User.new.go_stat.split(',')
    create_pdf(user_stat)
  end
end

UserRun.run
