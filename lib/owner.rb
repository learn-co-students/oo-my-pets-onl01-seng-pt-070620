class Owner
 attr_reader :species, :name
 attr_accessor :cat

 @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

    def say_species
      "I am a human."
    end

    def self.all
      @@all
    end

    def self.count
      @@all.size
    end

    def self.reset_all
      @@all.clear
    end

end
