require 'pry'
class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

#takes in an argument of a song
#associates that song with the artist by telling the song that it belongs to that artist
  def add_song(song)
    @songs << song
    song.artist = self
  end
#takes in an argument of a song name
#creates a new song with it and associates the song and artist
  def add_song_by_name(name)
      song = Song.new(name)
      @songs << song
      song.artist = self
  end

  def self.song_count
    Song.all.count
  end
# binding.pry




end
