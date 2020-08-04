require "pry"

class Owner
    attr_accessor :cat, :dog
    attr_reader :name, :species

    @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
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

 def buy_cat(cat)
    Cat.new(cat, self)
 end

 def buy_dog(dog)
    Dog.new(dog, self)
 end

 def walk_dogs
   Dog.all.select {|dog| dog.mood = "happy"}
 end

 def feed_cats
   Cat.all.select {|cat| cat.mood = "happy"}
 end

 def sell_pets
   Dog.all.select {|dog| dog.owner = nil}
   Cat.all.select {|cat| cat.owner = nil}
   Dog.all.select {|dog| dog.mood = "nervous"}
   Cat.all.select {|cat| cat.mood = "nervous"}
 end

 def list_pets
 return "I have #{dogs.length} dog(s), and #{self.cats.count} cat(s)."
 end

end
