require 'pry'


class Artist
  attr_accessor :name, :artist
  @@total_songs = []

  def initialize(name)
    @@total_songs << name
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    name = Song.new(name)
    add_song(name)
  end

  def self.song_count
    @@total_songs.uniq.count
  end

end
