class Artist
  attr_accessor :name, :songs
  @@all=[]
  def initialize(name)
    @name=name
    @songs=[]
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def genres
    @songs.map{|el| el.genre}.uniq
  end
  
  def new_song(name, genre)
    song=Song.new(name, self, genre)
    song.artist=self
    @songs << song
    song
  end
  
  def add_song_by_name(name)
    song=Song.new(name)
    add_song(song)
  end
  
  def self.song_count
    @@all_songs.count
  end
  
end