class Artist

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
    artist_songs = songs.select do |song|
      song.artist == self
    end
    artist_songs
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def genres
    songs = Song.all
    artist_songs = songs.select do |song|
      song.artist == self
    end
    genres_artist = artist_songs.map  do |song|
      song.genre
    end
    genres_artist
  end
end
