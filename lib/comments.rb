# This class creates Comment
class Comment
  include Url
  include Statistics
  URL = 'https://jsonplaceholder.typicode.com/comments'.freeze

  def initialize
    @arr = []
    sets_url([Comment::URL, Post::URL])
    @query = @arr[0]
    @post_query = @arr[1]
  end

  def go_stat
    super + "List of comments:\n " + names_list('name').to_s
  end
end
