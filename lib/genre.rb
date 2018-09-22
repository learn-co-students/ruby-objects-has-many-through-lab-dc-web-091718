class Genre

  attr_reader :name
  attr_accessor :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    songs = Song.all
    genre_songs = songs.select do |song|
      song.genre == self
    end
    genre_songs
  end

  def artists
    artists = []
    self.songs.each do |song|
      if !artists.include?(song.artist)
        artists << song.artist
      end
    end
    artists
  end
end
