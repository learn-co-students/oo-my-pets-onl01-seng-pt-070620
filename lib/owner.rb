require 'pry'

class Owner
  attr_accessor :cat, :dog
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cat = cat
  end
  
  def name
    @name
  end
  
  def species
    @species
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats 
    
  end

end