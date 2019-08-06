require_relative 'user'
require_relative 'post'
require_relative 'init'
require_relative 'comments'
require_relative 'request'
require_relative 'url'
# this module runs comment statistics
module CommentRun
  extend Url
  def self.run
    comment_stat = Comment.new.go_stat.split(',')
    create_pdf(comment_stat)
  end
end

CommentRun.run
