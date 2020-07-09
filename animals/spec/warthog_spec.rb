require_relative '../warthog'

describe Warthog do
	describe '#talk' do
		it 'return the sound the animal makes' do
			animal = Warthog.new('Pumba')
			actual = animal.talk
			expect(actual).to eq('Pumba grunts')
		end
	end

	describe '#eat' do
		it 'return a message about what the animal ate' do
			animal = Warthog.new('Pumba')
			actual = animal.eat('a carrot')
			expect(actual).to eq('Pumba eats a carrot.')
		end
	end
end

