class Owner 
  @@all = []
  attr_reader :species, :name
  def initialize(name )
    @name = name 
    @species = "human"
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def self.count
    @@all.size
  end 
  
  def self.reset_all
    @@all.clear
  end 
  
  def say_species
    "I am a #{species}."
  end 
end 