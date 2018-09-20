require 'pry'
class Artist
  attr_accessor :name
  attr_reader :songs

  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.songs
    @@songs
  end

  def self.song_count
    songs.count
  end

end