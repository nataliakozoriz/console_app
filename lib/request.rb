require 'net/http'
require 'json'
require 'prawn'
require_relative 'pdf'
# This module parses url and creates pdf
module Request
  include Pdf

  def parse_url
    @query = JSON.parse(Net::HTTP.get(URI(@url)))
    @arr << @query
    raise SocketError, 'Check URL' if @query.empty?
  rescue SocketError
    p 'Check URL, cannot connect with it'
  end
end
