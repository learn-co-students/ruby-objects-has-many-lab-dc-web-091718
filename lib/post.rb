require 'pry'
class Post
attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end
#knows the name of its author
#returns nil if the post does not have an author
  def author_name
    if author
      self.author.name
    else
      nil
    end
  end

# binding.pry

end
