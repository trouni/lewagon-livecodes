require_relative '../animal'

describe Animal do
	describe '#initialize' do
		it 'returns an instance of Animal' do
			actual = Animal.new('Kumamon')
			expect(actual).to be_an(Animal)
		end
	end

	describe '#name' do
		it 'return the name of the animal' do
			animal = Animal.new('Kumamon')
			actual = animal.name
			expect(actual).to eq('Kumamon')
		end
	end

	describe '#eat' do
		it 'return a message about what the animal ate' do
			animal = Animal.new('Kumamon')
			actual = animal.eat('chocolate')
			expect(actual).to eq('Kumamon eats chocolate.')
		end
	end
end
