class Dog
 attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  
  def intialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    owner.dogs << self
  end
  
  def self.all
    @@all
  end
  
   def owner=(owner)
     @owner = Owner.name  
     owner.buy_cat(self) unless owner.cats.include?(self)
   end

end