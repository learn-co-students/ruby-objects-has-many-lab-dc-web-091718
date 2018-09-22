class Author

  #posts has many posts
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end
#takes in argument of post and associate that post with
#the author by telling the post that it belongs to that author
  def add_post(post)
    @posts << post
    post.author = self
  end
#takes in argument of post add_post_by_title
#creates a new post with it and ssociate the post and author
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
    Post.all.count
  end






end
