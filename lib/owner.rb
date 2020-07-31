require 'pry'
class Owner
  attr_reader :name, :species
  
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end

  def species
    @species  
  end
  
  def say_species
    "I am a human."
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
    @cats  
  end
  
  def dogs
    @dogs
  end

  def buy_cat(cat)
      @cats << cats
      cat.owner = self unless cat.owner == self
  end
  
  def buy_dog(dog)
    @dogs << dog  
    dog.owner = self unless dog.owner == self
  end
  

end