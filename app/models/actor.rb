class Actor
    include Memorable::InstanceMethods
   
    @@all = []

    def self.all
        @@all
    end

    def characters
        Character.all.select{|char| char.actor == self}
    end
    
    def self.most_characters
        # get characters for every actor
        character_arrays = self.all.map{|actor| actor.characters}
        #array of arrays of characters, map to array of array sizes
        char_arr_sizes = character_arrays.map{|char_arr| char_arr.size}
        #find index of largest array size
        char_index = char_arr_sizes.index(char_arr_sizes.max)
        #pull character array at index found, pull first character, and pull name
        character_arrays[char_index][0].actor.name
    end
end