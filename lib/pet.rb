# SOLID principles and OOP
class Animal
  def play
    'waiting for my human to pet me'
  end

  # Encapculation
  private

  def talk
    %(I'm talking)
  end

  def move
    %(I'm walking)
  end
end

# Inheritance
class Dog < Animal
  def play
    'good boy going for a walk with best friend'
  end

  private

  def talk
    'Woof'
  end
end

class Cat < Animal
  def play
    'trying to catch these weird ligths on the wall'
  end

  private

  def talk
    'Meow'
  end
end

class Fish < Animal
  def play
    'spinning in the aquarium and catching food'
  end

  private

  def talk
    %(Can't talk)
  end

  def move
    %(I'm swimming)
  end
end

# Polymorphism
class Person
  attr_accessor :pet

  def initialize
    @pet = nil
  end

  def play
    "#{pet.play}"
  end
end

doggo = Dog.new
kitty = Cat.new
nemo = Fish.new
p = Person.new
p.pet = doggo
p.play