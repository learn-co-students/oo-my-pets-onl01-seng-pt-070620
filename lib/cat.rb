require 'pry'
class Cat

  @@all = []

  attr_accessor :owner, :mood
  attr_reader :name
  def initialize (name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self

  end

  def self.name
    @name
  end

  def self.all
    @@all

    # binding.pry
  end



end
