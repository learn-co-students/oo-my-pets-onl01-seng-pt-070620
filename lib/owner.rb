class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def name
    @name
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a human."
  end

  def save
    @@all << self
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
    Cat.all.select {|cat| cat.owner == self }
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self }
  end

  def buy_cat(name)
    Cat.new(name)
  end

  def buy_dog
  end

  def walk_dogs
  end

  def feed_cats
  end

  def sell_pets
  end

  def list_pets
  end

end
