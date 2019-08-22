require_relative 'request'
require_relative 'user'
require_relative 'post'
require_relative 'init'
require_relative 'comments'

Init.init(User::URL, Post::URL, Comment::URL)
