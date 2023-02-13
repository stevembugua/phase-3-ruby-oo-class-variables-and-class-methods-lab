require 'pry'
class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    @@hash = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end
    
    def self.genres
        @@genres.uniq!
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genre_count
        @@genre_count = {}
        @@genres.group_by(&:itself).each {|k, v| @@genre_count[k] = v.count}
        @@genre_count
        #binding.pry
    end

    def self.artist_count
        @@artist_count = {}
        @@artists.group_by(&:itself).each {|k, v| @@artist_count[k] =v.count}
        @@artist_count
    end 
end
