class Song

	attr_accessor :artist, :name
	attr_reader  :genre
	@@all = []

	def initialize(name, artist, genre)
		@name, @artist, @genre = name, artist, genre
		@@all << self

	end

	def self.all
		@@all
	end
end