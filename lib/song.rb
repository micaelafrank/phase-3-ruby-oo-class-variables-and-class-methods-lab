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
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.tally.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
    end

    def self.artist_count
        artist_count = {}
        @@artists.tally.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
    end
end

song = Song.new("twinkle twinkle", "mommy", "baby songs")
song2 = Song.new("toxic", "britney spears", "pop") 
song3 = Song.new("willow", "taylor swift", "country") 
song4 = Song.new("15", "taylor swift", "country") 


