class Artist
  @@all = []

  attr_reader :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self }
  end

  def genres

    genre_array = []

    songs.each do |song|
      unless genre_array.include?(song.genre)
        genre_array << song.genre
      end
    end

    genre_array
  end

end