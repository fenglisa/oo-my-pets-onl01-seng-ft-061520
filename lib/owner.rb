require "pry"

class Owner
  attr_accessor 
  attr_writer 
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name,species=nil)
    @name = name
    species = self.species
    @@all << self
  end
  
  def species
    @species = "human"
  end
    
  def say_species
    return "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.length
  end
  
  def self.reset_all
    self.all.clear
  end
  
#Associations
  def cats
    Cat.all.select {|cat| cat.owner.name == self.name}
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner.name == self.name}
  end
  
  binding.pry
  puts "bye"
  
end