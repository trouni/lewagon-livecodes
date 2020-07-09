require_relative '../meerkat'

describe Meerkat do
	describe '#talk' do
		it 'return the sound the animal makes' do
			animal = Meerkat.new('Timon')
			actual = animal.talk
			expect(actual).to eq('Timon barks')
		end
	end

	describe '#eat' do
		it 'return a message about what the animal ate' do
			animal = Meerkat.new('Timon')
			actual = animal.eat('a burger')
			expect(actual).to eq('Timon eats a burger.')
		end
	end
end

