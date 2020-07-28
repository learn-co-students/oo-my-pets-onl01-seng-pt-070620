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
    newcat = Cat.all.find { |cat| cat.name == catsname && cat.owner != self }
    binding.pry
    newcat.owner = self
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

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end
end
