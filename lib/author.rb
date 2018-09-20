class Author

  @@total_posts = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    @@total_posts << post
    post.author = self

  end

  def add_post_by_title(title)
    title = Post.new(title)
    add_post(title)
  end

  def self.post_count
    @@total_posts.uniq.count
  end
end
