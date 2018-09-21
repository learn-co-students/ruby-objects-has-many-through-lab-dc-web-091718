class Song
 
  attr_accessor :name, :artist, :genre
  
  @@all=[]
  def initialize(title, artist, genre)
    @title=title
    @artist=artist
    @genre=genre
    genre.songs << self
    @@all << self
  end
  
  
  def self.all
    @@all
  end
  
  def artist_name
   return @artist.name if @artist
   nil
  end
 
end