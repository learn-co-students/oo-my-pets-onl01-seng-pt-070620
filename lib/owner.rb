require 'pry'
class Owner
  attr_reader :owner, :species, :name
  @@all = []
  def initialize(name, species = 'human')
    @name = name
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    'I am a human.'
  end

  def buy_cat(catsname)
    Cat.new(catsname, self)
  end

  def feed_cats
    cats.each { |cat| cat.mood = 'happy' }
  end

  def cats
    Cat.all.find_all do |cats|
      cats.owner == self
    end
  end

  def dogs
    Dog.all.find_all do |dogs|
      dogs.owner == self
    end
  end

  def buy_dog(dogsname)
    Dog.new(dogsname, self)
  end

  def walk_dogs
    dogs.each { |dog| dog.mood = 'happy' }
  end

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end

  def sell_pets
    allpets = dogs + cats
    allpets.each do |animal|
      animal.mood = 'nervous'
      animal.owner = nil
    end
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end
end
