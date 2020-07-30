require 'pry'
class Owner
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  
  @@all = []
  @@count = 0
  
  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
    @cats = [] 
    @dogs = []
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def buy_cat(name)
    @cats << Cat.new(name, self)
  end
  
  def buy_dog(name)
    @dogs << Dog.new(name, self)
  end
  
  def cats
    Cat.all.select {|kitty| kitty.owner == self}
  end
  
  def dogs
    Dog.all.select {|pup| pup.owner == self}
  end
  
  def walk_dogs
    Dog.all.collect {|dog| dog.mood = 'happy'}
  end
  
  def feed_cats 
    Cat.all.collect {|cat| cat.mood = 'happy'}
  end
  
  def sell_pets
    Dog.all.collect {|dog| dog.mood = 'nervous'}
    Dog.all.collect {|dog| dog.owner = nil}
    Cat.all.collect {|cat| cat.mood = 'nervous'}
    Cat.all.collect {|cat| cat.owner = nil}
  end
  
  def list_pets
    return "I have #{dogs.size} dog(s), and #{@cats.size} cat(s)."
  end
  
  def self.all 
    @@all
  end
  
  def self.count 
    @@all.size
  end
  
  def self.reset_all
    @@all = []
  end
end