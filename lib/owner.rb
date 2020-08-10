require 'pry'
class Owner
  attr_reader :name, :species
  
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    if species == "human"
      puts "I am a #{self.species}."
    end
    "I am a #{self.species}."
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
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end 
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.select {|dog| dog.mood = "happy"}
  end
  
  def feed_cats 
    self.cats.select {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    all_pets = self.dogs + self.cats 
    all_pets.each {|pets| pets.mood = "nervous"; pets.owner = nil}
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
   
end