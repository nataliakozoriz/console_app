# This class creates post
class Post
  include Url
  include Statistics
  URL = 'https://jsonplaceholder.typicode.com/posts'.freeze
  def initialize
    @arr = []
    sets_url([Post::URL, User::URL, Comment::URL])
    @query = @arr[0]
    @user_query = @arr[1]
    @comment_query = @arr[2]
  end

  def go_stat
    super + "List of posts:\n " + names_list('title').to_s +
      + "\nNumber of comments for each post:\n" +
      + how_many_children(@comment_query, 'postId').to_s +
      + "\nNumber of overall comments of user's post\n" +
      + how_many_comments(how_many_children(@comment_query, 'postId')).to_s
  end

  def name(post_id)
    @query.find { |post_hash| post_hash['id'] == post_id }['title']
  end

  def user_id(post_title)
    @query.find { |post_hash| post_hash['title'] == post_title }['userId']
  end

  def user_name(user_id)
    @user_query.find { |user_hash| user_hash['id'] == user_id }['name']
  end
end
