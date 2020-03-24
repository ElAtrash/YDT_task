require 'computer.rb'

describe Computer do
	it { should respond_to :monitor }
	it { should respond_to :motherboard }
	it { should respond_to :hard_drive }
	it { should respond_to :cpu }
end

describe CPU do
	it { should respond_to :clock_rates }
	it 'should be greater then or equal to 0' do
		comp = CPU.new
		expect(comp.clock_rates).to be >= 0
	end
end

describe Motherboard do
	it { should respond_to :memory_size }
	it 'should be greater then or equal to 0' do
		comp = Motherboard.new
		expect(comp.memory_size).to be >= 0
	end
end

describe HardDrive do
	it { should respond_to :size }
	it 'should be greater then or equal to 0' do
		comp = HardDrive.new
		expect(comp.size).to be >= 0
	end
end

describe ComputerBuilder do
	it { should respond_to :computer }
	before(:each) do
		@computer = ComputerBuilder.new
	end

	describe '#cpu=' do
		it 'sould set and return an integer value' do
			cpu_size = 123
			expect(@computer.cpu=(cpu_size)).to eq(cpu_size)
		end

		it 'should raises' do
			not_integer = 'string'
			expect { @computer.cpu=(not_integer) }.to raise_error('Not an integer', RuntimeError)
		end
	end

	describe '#monitor' do
		it 'should set and return a symbol of monitor type' do
			monitor_type = :lcd
			expect(@computer.monitor=(monitor_type)).to eq(monitor_type)
		end
	end

	describe '#memory_size=' do
		it 'sould set and return an integer value' do
			size_in_mb = 1024
			expect(@computer.memory_size=(size_in_mb)).to eq(size_in_mb)
		end

		it 'should raises' do
			not_integer = 'string'
			expect { @computer.memory_size=(not_integer) }.to raise_error('Not an integer', RuntimeError)
		end
	end

	describe '#hard_drive=' do
		it 'sould set and return an integer value' do
			size_in_mb = 1024
			expect(@computer.hard_drive=(size_in_mb)).to eq(size_in_mb)
		end

		it 'should raises' do
			not_integer = 'string'
			expect { @computer.hard_drive=(not_integer) }.to raise_error('Not an integer', RuntimeError)
		end
	end
end
