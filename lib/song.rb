require 'pry'

class Song

  attr_accessor :name, :artist, :genre  
  
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << self
    @@artists << self
  end

  def self.count 
    @@count
    #returns total num of songs created  
  end

  def self.genres
    @@genres.each.uniq do |genre_id|
      puts genre_id.name
    end
  #returns arr of all genre of existing songs.No duplicates.
  end

  def self.artists
    arr = []
    @@artists.each.uniq do |artist_id|
      puts artist_id.name
    end
    #returns [] of all artists of existing songs.No duplicates.
    arr << artist_id
  end

  def self.genre_count
  #returns {} where the keys are the names of each genre.Each genre key should point to the num value of songs represented that genre - ex:{"rap" => 5}.Iterate over the @@genres arr & populate a hash w/the key/value pairs.
  end 

  def self.artist_count
  #returns a histogram for artists
  end

end

