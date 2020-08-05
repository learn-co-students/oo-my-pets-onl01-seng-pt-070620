class Owner
  attr_reader :name, :species, :say_species
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @say_species = "I am a human."
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
  Cat.all.select do |cat| cat.owner == self
   end
  end
  
 def dogs
  Dog.all.select do |dog| dog.owner == self
  end
 end
 
 def buy_cat(new_cat)
   Cat.new(new_cat, self)
 end
    
  def buy_dog(new_dog)
    Dog.new(new_dog, self)
  end
  
  def walk_dogs
    Dog.all. select do |dog| dog.mood = "happy"
  end
end

  def feed_cats
    Cat.all. select do |cat| cat.mood = "happy"
    end
  end
  
def sell_pets
    dogs.each do |dog| dog.mood = "nervous"
      cats.each do |cat| cat.mood = "nervous"
        dogs.each do |dog| dog.owner = nil
        cats.each do |cat| cat.owner = nil
          end
        end
      end
    end
   
  end
    
  def list_pets
  cats= self.cats.count
  dogs = self.dogs.count
   "I have #{dogs} dog(s), and #{cats} cat(s)."
end

end