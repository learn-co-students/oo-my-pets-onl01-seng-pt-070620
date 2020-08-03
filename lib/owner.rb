class Owner 
  @@all = []
  attr_accessor :cats, :dogs, :pets
  attr_reader :species, :name
  def initialize(name )
    @name = name 
    @cats = []
    @dogs = []
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
  
  def pets 
    @pets 
  end 
  
  def say_species
    "I am a #{species}."
  end 
  
  def buy_cat(name)
    @cats << Cat.new(name, self)
  end 
  
  def buy_dog(name) 
    @dogs << Dog.new(name, self)
  end 
  
  def walk_dogs
    dogs.each do |dog|
    dog.mood = 'happy'
  end
end
  
   def feed_cats
    cats.each do |cat|
      cat.mood = 'happy'
    end
  end
  
  def sell_pets
    allpets = dogs + cats
    allpets.each do |pet|
      pet.mood = 'nervous'
      pet.owner = nil
  end 
end 
  
  def dogs 
    Dog.all.find_all do |dogs|
     dogs.owner == self 
   end 
 end 
  
  def cats 
    Cat.all.find_all do |cats|
      cats.owner == self 
      end 
    end 
    
  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end 
end 