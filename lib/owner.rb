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
    Cat.all.select do |cat|
      cat.owner == self
    end
  end
  
  def dogs 
    Dog.all.select do |dog|
      dog.owner == self
    end
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    self.cats.each do |cat|
      self.cats.delete(cat)
      cat.owner = nil
      cat.mood = "nervous"
    end
    self.dogs.each do |dog|
      self.dogs.delete(dog)
      dog.owner = nil
      dog.mood = "nervous"
    end
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end