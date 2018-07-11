class Genre
  @@all = []
  attr_accessor :name, :songs

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all < self
    @songs = []
  end

  def new_song(name, artist)
    self.songs << Song.new(name, artist, self)
  end

  def songs
    Songs.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.select do |song|
      songs.artist
    end
  end
end
