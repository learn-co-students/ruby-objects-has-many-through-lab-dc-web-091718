require 'pry'

class Genre
  @@all = []

  attr_reader :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    artists_array = []
    self.songs.each do |song|
      unless artists_array.include?(song.artist)
        artists_array << song.artist
      end
    end

    return artists_array
  end
end