class Artist
  attr_accessor :name, :genre, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def song
    @@all.select do |song|
      song.artist == self
    end
  end

  def genres
    
  end

end
