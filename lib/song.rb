require 'pry'
class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end
#knows the name of its artist
#return nil if the song does not have an artist
  def artist_name
    if artist
    self.artist.name
    else
      nil
    end
  end


# binding.pry





end
