require_relative 'request'
# This module counts statistics
module Statistics
  include Request

  def count
    "Number of elements of #{self.class} is #{@query.length}.\n"
  rescue NoMethodError
    p 'Check Urls, maybe the error is there'
  end

  def names_list(val)
    names = []
    @query.each do |hash|
      names << hash[val]
    end
    names
  end

  def go_stat()
    count
  end

  def how_many_children(inner_query, id)
    new = {}
    temp = []
    inner_query.each do |key|
      temp << key[id]
      new = temp.group_by(&:itself).map do |k, v|
        [name(k), v.count]
      end .to_h
    end
    new
  end

  def how_many_comments(inner_query)
    hash = {}
    inner_query.each do |post_title, comments_count|
      y = user_name(user_id(post_title))
      if hash.key? y
        hash[y] += comments_count
      else
        hash[y] = comments_count
      end
    end
    hash
  end
end
