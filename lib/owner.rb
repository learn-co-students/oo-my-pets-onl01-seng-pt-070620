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

end
