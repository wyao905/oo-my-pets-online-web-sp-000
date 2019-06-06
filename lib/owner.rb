class Owner
  attr_accessor :name
  attr_reader :species
  
  @@all = []
  
  def initialize(name)
    Owner.all << self
    @species = "human"
    @name = name
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []}
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def pets
    @pets
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.length
  end
  
  def self.reset_all
    self.all.clear
  end
end