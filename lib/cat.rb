require 'pry'
class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  
  def initialize(new_name, new_owner)
    @name = new_name
    # found = false
    # found_owner = nil
    # Owner.all.each do |owner_obj|
    #   if owner_obj.name == new_owner
    #     found_owner = owner_obj
    #     found = true
    #     break
    #   end
    # end
    # if found == true 
    #   @owner = found_owner
    # else 
    #   created_owner = Owner.new(new_owner)
    #   @owner = created_owner
    #   #binding.pry
    # end
    
    @owner = new_owner
    @owner.cats << self
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