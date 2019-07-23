module Memorable
    module ClassMethods
        def what_class
            puts "What"
        end
    end
    module InstanceMethods
        
        attr_reader :name

        def initialize(name)
            @name = name
            self.class.all << self
        end
    end
end