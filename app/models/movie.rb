class Movie
    include Memorable::InstanceMethods
   
    @@all = []


    def self.all
        @@all
    end

    def get_characters
        MovieCharacter.all.select{|movie_char| movie_char.movie == self}
    end

    def get_actors
        self.get_characters.map{|movie_char| movie_char.character.actor}
    end
    
    def self.most_actors
        #get actor arrays for movies
        actor_arrays = self.all.map{|movie| movie.get_actors}
        #find index of actor arrays with most actors in it
        index = actor_arrays.index(actor_arrays.max_by{|actor_array| actor_array.size})
        #return movie at that index in all
        self.all[index]
    end
end