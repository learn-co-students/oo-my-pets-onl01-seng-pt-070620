class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  
  def initialize(new_name, new_owner)
    @name = new_name
    @owner = new_owner
    @owner.dogs << self
    @mood = "nervous"
    @@all << self 
  end
  def self.all 
    @@all
  end
  
  def self.count
    @@all.length 
  end
  
  def self.reset_all 
    @@all = []
  end
  
end