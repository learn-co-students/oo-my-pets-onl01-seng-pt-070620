require 'pry'
class Cat

  attr_reader :name
  attr_accessor :owner, :mood

  @@all = []

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner #self.owner_name
    @mood = mood
    @@all << self
  #   def initialize(name, owner)
  #   @name = name
  #
  # ## you're inside a cats initialize method, name will always be referring to a cats name
  #
  # ## but you're creating an owner with that name right here:
  #   @owner = Owner.new(name)
  #   @@all << self
  # end
  end

  def self.all
    @@all
  end



end
