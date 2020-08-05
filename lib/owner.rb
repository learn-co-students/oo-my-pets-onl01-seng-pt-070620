require 'pry'

class Owner
  attr_accessor :pets
  attr_reader :name, :species
  
  @@all = []
 
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
    @pets = {dogs: [], cats: []}
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
    Cat.all.select {|cats| cats.owner == self}
  end
  
  def dogs
    Dog.all.select {|dogs| dogs.owner == self}
  end
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name, self)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end