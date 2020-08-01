class Cat
  # code goes here
  
 attr_accessor :mood
  @@all = []
  # code goes here
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    owner.cats << self
    @@all << self
  end

def name
  @name
end

def self.all
  @@all
end
  
end