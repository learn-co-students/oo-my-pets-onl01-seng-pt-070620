class Owner
  attr_accessor :pets
  attr_reader :name, :species
  
  @@owners = []
  
  
  def initialize(name, species= "human")
    @name=name
    @species= "human"
    @@owners << self
    @pets= {:cats => []}
    

    
  end 
  def say_species 
    "I am a human."
  end 
  def self.all 
    @@owners
  end 
  def self.count 
    @@owners.count 
  end 
  def self.reset_all
     @@owners.clear
     
  end 
  def cats 
     Cats(owner).all
  end

  # code goes here
end