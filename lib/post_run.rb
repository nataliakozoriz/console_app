require_relative 'user'
require_relative 'post'
require_relative 'init'
require_relative 'comments'
require_relative 'request'
require_relative 'url'
# This module runs posts statistics
module PostRun
  extend Url
  def self.run
    post_stat = Post.new.go_stat.split(',')
    create_pdf(post_stat)
  end
end

PostRun.run
