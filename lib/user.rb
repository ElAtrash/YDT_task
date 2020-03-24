# User class with set of methods
require 'date'

class User
  attr_writer :first_name, :last_name, :height, :weight
  attr_accessor :day, :month, :year

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def date_of_birth
    Date.new(@year, @month, @day)
  end

  def to_s
    p date_of_birth.to_s
  end

  # in cm
  def height
    @height
  end

  # in kg
  def weight
    @weight
  end
end

# Adding new behaviour to user using Decorator pattern
class UserDecorator
  def initialize(user)
    @user = user
  end

  def full_name
    "#{@user.first_name} #{@user.last_name}"
  end

  def date_of_birth_us
    @user.date_of_birth.strftime('%m/%d/%Y')
  end

  def date_of_birth_eu
    @user.date_of_birth.strftime('%d-%m-%Y')
  end

  def body_mass_index
    (@user.weight * 10**4) / (@user.height**2)
  end
end

user1 = User.new
user1.first_name = 'Bob'
user1.last_name = 'Simpson'
user1.day = 11
user1.month = 4
user1.year = 1986
user1.date_of_birth
user1.to_s
user1.height = 187
user1.weight = 91
user1 = UserDecorator.new(user1)
user1.full_name
user1.date_of_birth_us
user1.date_of_birth_eu
user1.body_mass_index