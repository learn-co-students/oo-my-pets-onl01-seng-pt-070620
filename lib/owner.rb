require 'pry'
class Owner


  attr_reader :name, :species
  @@all = []

  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self

  end

  def say_species
     "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end
  def dogs

    Dog.all.select do |dog|
      dog.owner == self    #returnsa a collection of all the dogs that belong to the owner
    end
  end
  def buy_cat(name) ##can buy a dog that is an instance of the Dog class and knows about its dogs
    cat = Cat.new(name, self) #we put self here bc we need 2 arguments and we associate the cat to the owner right away
  end
  def buy_dog(name)
    dog = Dog.new(name, self) #we put self here bc we need 2 arguments and we associate the cat to the owner right away
  end
  def walk_dogs
    Dog.all.select do |dog|
      dog.mood = "happy"
    end
  end
  def feed_cats
    Cat.all.select do |cat|
      cat.mood = "happy"
    end
  end
  def sell_pets
  #  binding.pry
    Dog.all.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end

    Cat.all.select do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end

  end
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end
