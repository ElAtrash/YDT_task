# Implementation of visitor patterns
module Visitable
  def accept(visitor)
    visitor.visit(self)
  end
end

class Animal
  include Visitable

  attr_reader :genus, :amount

  def initialize(genus, amount)
    @genus = genus
    @amount = amount
  end
end

class Zoo
  include Visitable
  attr_accessor :animals

  def initialize
    @animals = []
  end

  def have_animal(animal)
    @animals << animal
  end

  def accept(visitor)
    @animals.each do |animal|
      animal.accept(visitor)
    end
  end
end

class AnimalVisitor
  def visit
    raise NotImpelementedError.new
  end
end

class ZooAnimalsVisitor < AnimalVisitor
  def visit(being)
    puts "Currently at zoo: #{being.amount} #{being.genus}"
  end
end

a1 = Animal.new('Felis', 5)
a2 = Animal.new('Ursus', 2)

zoo = Zoo.new
zoo.have_animal(a1)
zoo.have_animal(a2)

zoo.accept(ZooAnimalsVisitor.new)