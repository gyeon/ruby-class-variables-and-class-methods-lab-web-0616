require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  ## expect song.artist= artist
  def self.count
    @@count
  end

  def self.artists
    #go through all songs artists, and find the select the ones that are unique
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each_with_object({}) do |genre, genre_count_obj|
      if genre_count_obj[genre] 
        genre_count_obj[genre] += 1
      else
       genre_count_obj[genre] = 1
      end
    end
  end

  def self.artist_count
    @@artists.each_with_object({}) do |artist, artist_count_obj|
      if artist_count_obj[artist]
        artist_count_obj[artist] += 1
      else
        artist_count_obj[artist] = 1
      end
    end
  end


end

