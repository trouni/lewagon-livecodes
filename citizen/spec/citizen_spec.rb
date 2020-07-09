require_relative '../citizen'

describe '#can_vote?' do
	it 'returns true if given a citizen who is 18' do
		citizen = Citizen.new("Nicole", "Wong", 18)
		expect(citizen.can_vote?).to eq(true)
	end

	it 'returns false if given a citizen who is 17' do
		citizen = Citizen.new("Momo", "Nakamura", 17)
		expect(citizen.can_vote?).to eq(false)
	end
end

describe '#full_name' do
	it 'returns the full name capitalized for a citizen' do
		citizen = Citizen.new('shogo', 'hida', 6)
		expect(citizen.full_name).to eq("Shogo Hida")
	end
end