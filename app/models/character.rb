class Character
    include Memorable::InstanceMethods
   
    @@all = []

    attr_reader :name, :actor

    def initialize(name, actor)
        super(name)
        @actor = actor
    end

    def self.all
        @@all
    end

    def get_movies
        MovieCharacter.all.select{|mov_char| mov_char.character == self}
    end
    
    def get_shows
        ShowCharacter.all.select{|show_char| show_char.character == self}
    end    
    
    def self.most_appearances
        char_sizes = self.all.map{|char| char.get_movies.size + char.get_shows.size}
        index = char_sizes.index(char_sizes.max)
        self.all[index]
    end
end