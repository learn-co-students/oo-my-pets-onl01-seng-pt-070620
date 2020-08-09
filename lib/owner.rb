require "pry"

class Owner
 attr_reader :species, :name
 #attr_accessor :cat, :dog, :pets

 @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

    def say_species
      "I am a human."
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

    def cats
      Cat.all.select {|cats| cats.owner == self}
    end

    def dogs
      Dog.all.select {|dog| dog.owner == self}
    end

    def buy_cat(cat_name)
      Cat.new(cat_name, self)
    end

    def buy_dog(dog_name)
      Dog.new(dog_name, self)
    end

    def walk_dogs
      self.dogs.each{ |dog| dog.mood = "happy"}
    end

    def feed_cats
      self.cats.each{ |cat| cat.mood = "happy"}
    end



    def sell_pets
      self.cats.each do |cat|
        cat.owner = nil
        cat.mood = "nervous"
      end
      self.dogs.each do |dog|
        dog.owner = nil
        dog.mood = "nervous"
      end
    end

    def list_pets
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end

end
