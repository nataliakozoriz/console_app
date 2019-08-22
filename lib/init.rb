require_relative 'url'
# This module in inits program start
# @arr[0] user
# @arr[1] post
# @arr[2] comment
module Init
  extend Url
  def self.init(*args)
    # @arr = []
    # sets_url(args)
    User.new
    # Post.new(@arr[1], @arr[0], @arr[2])
    # Comment.new(@arr[2], @arr[1])
  end
end
