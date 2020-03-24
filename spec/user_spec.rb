require 'user.rb'

describe User do 
	it { should respond_to :first_name }
	it { should respond_to :last_name }
	it { should respond_to :date_of_birth}
	it { should respond_to :height }
	it { should respond_to :weight }
	it { should respond_to :day }
	it { should respond_to :month }
	it { should respond_to :year }

	describe '#date_of_birth' do
		it 'should work for same dates' do
			person = User.new
			person.day = 9
			person.month = 5
			person.year = 2001
			
			expect(person.date_of_birth).to eq(Date.new(2001, 5, 9))
		end
	end
end

describe UserDecorator do
	describe '#full_name' do
		it 'should return full_name' do
			user = double('user')
			allow(user).to receive(:first_name) { 'Bob' }
			allow(user).to receive(:last_name) { 'Sympson' }

			ud = UserDecorator.new(user)
			expect(ud.full_name).to eq('Bob Sympson')
		end
	end
end