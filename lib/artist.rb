class Artist

	attr_accessor :name, :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		@@all << self
	end

	def add_song(song_instance)
		song_instance.artist = self	
		self.songs<<song_instance
	end

	def add_song_by_name(song_name)
		song = Song.new(song_name)
		add_song(song)
	end	

	def self.all 
		@@all
	end

	def self.song_count
		count = 0
		self.all.each do |artist|
			count+=artist.songs.size
		end
		count
	end

	def songs
		@songs
	end

end	
