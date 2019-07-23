require "pry"
require_relative"../app/concerns/memorable.rb"
require_relative"../app/models/actor.rb"
require_relative"../app/models/movie.rb"
require_relative"../app/models/show.rb"
require_relative"../app/models/character.rb"
require_relative"../app/models/show_character.rb"
require_relative"../app/models/movie_character.rb"


#Pry.start

a1 = Actor.new("Kit Harington")
a2 = Actor.new("Sean Bean")
a3 = Actor.new("Sarah Michelle Gellar")
a4 = Actor.new("David Boreanaz")
a5 = Actor.new("Elijah Wood")

c1 = Character.new("JSnow", a1)
c2 = Character.new("N.Stark", a2)
c3 = Character.new("Boromir", a2)
c4 = Character.new("Buffy The Vampire Slayer", a3)
c5 = Character.new("Angel The Vampire", a4)
c6 = Character.new("Frodo Baggins", a5)
c7 = Character.new("Serial Killer", a5)

s1 = Show.new("GOT")
s2 = Show.new("Buffy")
s3 = Show.new("Angel")

m1 = Movie.new("LOTR:Fellowship")
m2 = Movie.new("Buffy")

sc1 = ShowCharacter.new(c1, s1)
sc2 = ShowCharacter.new(c2, s1)
sc3 = ShowCharacter.new(c4, s2)
sc4 = ShowCharacter.new(c4, s3)
sc5 = ShowCharacter.new(c5, s2)
sc6 = ShowCharacter.new(c5, s3)

mc1 = MovieCharacter.new(c3, m1)
mc2 = MovieCharacter.new(c4, m2)
mc3 = MovieCharacter.new(c6, m1)

binding.pry
0
