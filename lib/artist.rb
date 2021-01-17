require 'pry'
class Artist
    @@all = []
    attr_accessor :genre
    attr_reader :name
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
        Song.all.select {|song| song.artist == self}
    end
    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        genres = []
        Song.all.each do |song| 
            # binding.pry
            if song.artist == self
                genres.push(song.genre)
            end
        end
        genres
    end






end
