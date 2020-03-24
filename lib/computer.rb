# Builder design pattern
# Building a computer
class Computer
  attr_accessor :monitor, :motherboard, :cpu, :hard_drive

  def initialize(monitor = :none, motherboard = Motherboard.new, hard_drive = HardDrive.new, cpu = CPU.new)
    @monitor = monitor
    @motherboard = motherboard
    @hard_drive = hard_drive
    @cpu = cpu
  end
end

# basic components of a computer
class CPU
  attr_accessor :clock_rates

  def initialize(clock_rates = 0)
    @clock_rates = clock_rates
  end
end

class Motherboard
  attr_accessor :memory_size

  def initialize(memory_size = 0)
    @memory_size = memory_size
  end
end

class HardDrive
  attr_accessor :size

  def initialize(size = 0)
    @size = size
  end
end

# encapsulating the logic
class ComputerBuilder
  attr_reader :computer

  def initialize
    @computer = Computer.new
  end

  def cpu=(size_in_hertz)
    raise "Not an integer" unless size_in_hertz.is_a?(Integer)
    @computer.cpu = CPU.new(size_in_hertz)
  end

  def monitor=(monitor)
    @computer.monitor = monitor
  end

  def memory_size=(size_in_mb)
    raise "Not an integer" unless size_in_mb.is_a?(Integer)
    @computer.motherboard.memory_size = size_in_mb
  end

  def hard_drive=(size_in_mb)
    raise "Not an integer" unless size_in_mb.is_a?(Integer)
    @computer.hard_drive = HardDrive.new(size_in_mb)
  end
end

computer = ComputerBuilder.new
computer.cpu = 1_300_000
computer.hard_drive = 1_000_000
computer.memory_size = 20_000
computer.monitor = :lcd