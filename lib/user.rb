require_relative 'statistics'
require_relative 'url'

# This class creates User
class User
  include Url
  include Statistics
  URL = 'https://jsonplaceholder.typicode.com/users'.freeze
  def initialize
    @arr = []
    sets_url([User::URL, Post::URL])
    @query = @arr[0]
    @post_query = @arr[1]
  end

  def go_stat
    super + "List of users:\n " + names_list('name').to_s +
      + "\nNumber of posts for each user:\n" +
      + how_many_children(@post_query, 'userId').to_s
  end

  def name(user_id)
    @query.find { |user_hash| user_hash['id'] == user_id }['name']
  end
end
