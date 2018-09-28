require "pry"
class Artist
  attr_accessor :name



  def initialize(name)
    @name = name
    @songs =[]

  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    # @@all << song
  end

  def add_song_by_name(name)
    new_song =  Song.new(name)
    @songs << new_song
    new_song.artist = self
    # @@all << new_song
  end



  def self.song_count
    Song.all.count
  end

end
