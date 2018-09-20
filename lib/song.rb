class Song

	attr_accessor :artist
	attr_reader :name
	@@all = []

	def initialize(name)
		@name = name
		@@all << self	
	end

	def artist_name
		if @artist
			@artist.name
		else
			nil
		end
	end

	def self.all
		@@all
	end
	
end