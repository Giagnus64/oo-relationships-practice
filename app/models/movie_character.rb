class MovieCharacter
    @@all = []
    attr_reader :character, :movie

    def initialize(character, movie)
        @character = character
        @movie = movie
        @@all << self
    end

    def self.all
        @@all
    end
end