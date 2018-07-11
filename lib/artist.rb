class Artist
  attr_accessor :name, :genre, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    @songs = Song.new(name, self, genre)
  end

  def song
    Songs.all.select do |song|
      song.artist == self
    end
  end

  def genres
    self.songs.select do |song|
      song.genre
    end
  end
end
