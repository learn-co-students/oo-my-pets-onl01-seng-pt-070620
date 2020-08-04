class Owner
  attr_reader :species, :name
  attr_accessor :pets, :dogs, :cats

  @@all = []
 
  @@owner = []
  
  def initialize(name)
    
    @species = "human"
    @name = name
    @@all << self
    @@owner<< name
    @pets =[]
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end


  def say_species
    "I am a #{@species}."
  end

  def cats 
    Cat.all.select {|cat| cat.owner == self}
    
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
   
  end


  
  def buy_cat(name)
    self.cats << Cat.new(name, self)
    
  end

  def buy_dog(name)
    self.dogs << Dog.new(name, self)
    
  end

  def walk_dogs
    self.dogs.each {|dog|
      dog.mood = "happy"}
      
  end

  def feed_cats
    self.cats.each {|cat|
      cat.mood = "happy"}
      
  end

  
  def list_pets
    "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
    
  end

  def sell_pets
      self.cats.each {|cat|
      cat.mood = "nervous"}
      self.cats.each {|cat| cat.owner = nil}
    
      self.dogs.each {|dog|
      dog.mood = "nervous"}
      self.dogs.each {|dog| dog.owner = nil}

  end

 
end