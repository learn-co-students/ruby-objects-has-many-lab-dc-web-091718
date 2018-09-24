class Author

	attr_accessor :name, :posts

	@@all = []

	def initialize(name)
		@name = name
		@posts = []
		@@all << self
	end

	def add_post(post)
		post.author = self
		self.posts<<post
	end

	def add_post_by_title(title)
		post  = Post.new(title)
		add_post(post)
	end	

	def self.all
		@@all 
	end

	def self.post_count
		count = 0
		self.all.each do |author|
			count+=author.posts.size
			#binding.pry
		end
		count
	end

	def posts
		@posts
	end
end