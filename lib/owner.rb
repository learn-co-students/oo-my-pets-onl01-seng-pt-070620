class Owner
  attr_reader :name, :pets
  @@all = []
  # code goes here
  def initialize(name)
    @name = name
    @species = "human".freeze
    @cats = []
    @dogs = []
    @@all << self
  end

def species
  @species
end

def say_species
  "I am a #{@species}."
end

def buy_dog(name)
  dog = Dog.new(name, self)
end

def buy_cat(name)
  cat = Cat.new(name, self)
end

def walk_dogs
  self.dogs.each {|e| e.mood = "happy" }
end

def feed_cats
  self.cats.each {|e| e.mood = "happy" }
end

def sell_pets
    self.cats.each {|e| e.mood = "nervous" }
    self.dogs.each {|e| e.mood = "nervous" }
    self.cats.clear
    self.dogs.clear


end


def dogs
  @dogs
end

def cats
  @cats
end

def self.all
  @@all
end

def self.count
  self.all.size
end

def self.reset_all
  self.all.clear
end

def list_pets
  "I have #{dogs.size} dog(s), and #{cats.size} cat(s)."

end

end