# Dino superclass
class Dinosaur   
  attr_accessor :is_extinct, :size, :movement, :era, :in_movie

  def initialize
    @is_extinct = true
  end

  def sleep(time)
    if time > 5
      puts "(low rawr)"
    else
      puts "(MASSIVE RAAWWWRR)"
    end
  end

  def mate
  end

  def move
  end

end

class Carnivore < Dinosaur
  attr_accessor :diet

  def initialize
    @diet = "meat"
    # Calls back to initialize in superclass, so each new instance has is_extinct
    super
  end

  def hunt
  end

end

class Herbivore < Dinosaur
  attr_accessor :diet

  def initialize
    @diet = "plants"
    super
  end

  def forage
  end


end


