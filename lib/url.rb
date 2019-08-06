require_relative 'request'

# This module parses Url
module Url
  include Request
  def sets_url(url)
    url.map do |i|
      @url = i
      parse_url
    end
  end
end
