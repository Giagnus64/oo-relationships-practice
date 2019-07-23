class Show
    include Memorable::InstanceMethods
   
    @@all = []

    def self.all
        @@all
    end

    def get_movie_names
        movie_array_names = Movie.all.map{|movie|movie.name}
    end
    
    #class version
    def self.on_the_big_screen
        adapted_to_movies = []
        movie_names = self.get_movie_names
        self.all.each do |show|
            if movie_names.include?(show.name)
                adapted_to_movies.push(show)
            end
        end
        adapted_to_movies
    end

    #instance version
    def on_the_big_screen
        movie_names = self.get_movie_names
        if movie_names.include?(self.name)
             "This show has a movie!"
        else
            "This show is not associated with a movie."
        end
    end
end