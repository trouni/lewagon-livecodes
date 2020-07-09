require_relative '../animal'

describe Animal do
	describe '#initialize' do
		it 'creates an Animal instance' do
			animal = Animal.new('Babe')
			expect(animal).to be_an(Animal)
		end
	end

	describe '#name' do
		it 'returns the name of the animal' do
			animal = Animal.new('Babe')
			expect(animal.name).to eq('Babe')
		end
	end

	describe '::phyla' do
		it 'returns the four phyla' do
			phyla = Animal.phyla
			expected = ['the wormy ones', 'the shellfish stuff', 'symmetrical ones with a butt', 'the other ones']
			expect(phyla).to eq(expected)
		end
	end

	describe '#eat' do
		it 'returns a sentence describing what the animal eats' do
			animal = Animal.new('Babe')
			sentence = animal.eat('black liquorice')
			expect(sentence).to eq('Babe eats black liquorice.')
		end
	end
end