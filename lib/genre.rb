class Genre
    @@all = []
    attr_reader :name
    # attr_accessor :genre
    def initialize(name)
        @name = name
        save
    end
    def save 
        @@all.push(self)
    end
    def self.all
        @@all
    end
    def songs
        Song.all.select {|song| song.genre == self}
    end
    def artists
        artists = []
        Song.all.each do |song| 
            if song.genre == self
                artists.push(song.artist)
            end
        end
        artists
    end


end