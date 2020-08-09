class Dog
  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    save
  end

  def name
    @name
  end

  def save
    @@all
  end

  def self.all
    @@all
  end 



end
