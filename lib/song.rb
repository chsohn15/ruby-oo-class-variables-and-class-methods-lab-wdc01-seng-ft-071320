require 'pry'

class Song

    @@count = 0 
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1 
        @@genres << @genre
        @@artists << @artist
    end
    
    def self.count 
        @@count
    end

    def self.entries
        @@genres
    end

    def self.genres
        @@genres.uniq
    end

    def self.all_artists
        @@artists
    end

    def self.artists
        @@artists.uniq
    end


    def self.genre_count
        #Iterate through array of genres 
        #Create hash 
        genre_hash = {}
        self.entries.each do |genre|
            if genre_hash[genre] == nil
                genre_hash[genre] = 1
            else
                genre_hash[genre] += 1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        self.all_artists.each do |artist|
            if artist_hash[artist] == nil
                artist_hash[artist] = 1
            else
                artist_hash[artist] += 1
            end
        end
        artist_hash
    end
end