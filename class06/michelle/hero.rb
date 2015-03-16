require 'active_record'
#there's a library called activerecord. Load up everything in there
require 'pry'

ActiveRecord::Base.establish_connection("postgres://localhost/heros")

ActiveRecord::Base.logger = Logger.new(STDOUT)
#every time you run an ar method, ar is writing some sql next to it. that's what this line means.

class Hero < ActiveRecord::Base
	#creating a class hero which will inherit from the ActiveRecord
end

Hero.delete_all (deletes any duplicates)

Hero.create([
  {:name => "Superman", :alter_ego => "Clark Kent",:has_cape => true, :power => "strength", :arch_nemesis => "Lex Luthor"},
  {:name => "Wonder Woman", :alter_ego => "Diana Prince",:has_cape => false, :power => "strength", :arch_nemesis => "Cheetah"},
  {:name => "Batman", :alter_ego => "Bruce Wayne",:has_cape => true, :power => "intelligence", :arch_nemesis => "Joker"},
  {:name => "Mr Incredible", :alter_ego => "Robert Parr",:has_cape => false, :power => "strength", :arch_nemesis => "Syndrome"},
  {:name => "Professor X", :alter_ego => "Charles Xavier",:has_cape => false, :power => "psychic", :arch_nemesis => "Magneto"},
  {:name => "Spiderman", :alter_ego => "Peter Parker",:has_cape => false, :power => "wall climbing", :arch_nemesis => "Doctor Octopus"},
  {:name => "Captain America", :alter_ego => "Steve Rogers",:has_cape => false, :power => "super soldier", :arch_nemesis => "Red Skull"},
  {:name => "Iron Man", :alter_ego => "Tony Stark",:has_cape => false, :power => "suit", :arch_nemesis => "Mandarin"}
])

binding.pry 
#hits pause on the program so that you can mess with it
