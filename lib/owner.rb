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
    pets[:fishes] << new_fish
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    pets[:cats] << new_cat
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    pets[:dogs] << new_dog
  end
  
  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end    
  
  def play_with_cats
    pets[:cats].each {|dog| dog.mood = "happy"}
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