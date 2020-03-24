require 'pet.rb'

describe Animal do 
	before(:each) do
		@animal = Animal.new
	end
	describe '#play' do
		it 'should respond correstly when play method is called' do
			action = @animal.play
			expect(action).to eq 'waiting for my human to pet me'
		end
	end

	describe '#talk' do
		it 'should respond correstly when talk method is called' do
			action = @animal.send(:talk)
			expect(action).to eq 'I\'m talking'
		end
	end

	describe '#move' do
		it 'should respond correstly when move method is called' do
			action = @animal.send(:move)
			expect(action).to eq 'I\'m walking'
		end
	end
end

describe Dog do
	before(:each) do
		@dog = Dog.new
	end
	describe '#play' do
		it 'should respond correstly when play method is called' do
			action = @dog.play
			expect(action).to eq 'good boy going for a walk with best friend'
		end
	end

	describe '#talk' do
		it 'should respond correstly when talk method is called' do
			action = @dog.send(:talk)
			expect(action).to eq 'Woof'
		end
	end
end

describe Cat do
	before(:each) do
		@cat = Cat.new
	end
	describe '#play' do
		it 'should respond correstly when play method is called' do
			action = @cat.play
			expect(action).to eq 'trying to catch these weird ligths on the wall'
		end
	end

	describe '#talk' do
		it 'should respond correstly when talk method is called' do
			action = @cat.send(:talk)
			expect(action).to eq 'Meow'
		end
	end
end

describe Fish do 
	before(:each) do
		@fish = Fish.new
	end
	describe '#play' do
		it 'should respond correstly when play method is called' do
			action = @fish.play
			expect(action).to eq 'spinning in the aquarium and catching food'
		end
	end

	describe '#talk' do
		it 'should respond correstly when talk method is called' do
			action = @fish.send(:talk)
			expect(action).to eq "Can't talk"
		end
	end

	describe '#move' do
		it 'should respond correstly when move method is called' do
			action = @fish.send(:move)
			expect(action).to eq "I'm swimming"
		end
	end
end

describe Person do
	describe '#play' do
		it 'should play with the dog' do
			doggo = Dog.new

			person1 = Person.new
			person1.pet = doggo

			expect(person1.play).to eq('good boy going for a walk with best friend')
		end
	end
end