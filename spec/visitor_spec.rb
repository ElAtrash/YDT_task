require 'visitor.rb'

describe Zoo do
	describe '#have_animal' do
		it 'should add animal to animals array' do
			animal1 = Animal.new('Lepus', 20)
			animal2 = Animal.new('Ochotona', 5)
			
			zoo = Zoo.new
			zoo.have_animal(animal1)
			zoo.have_animal(animal2)

			expect(zoo.animals.first).to eq(animal1)
			expect(zoo.animals.last).to eq(animal2)
		end
	end
end
