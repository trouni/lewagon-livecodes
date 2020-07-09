require_relative '../lion'

describe Lion do
	describe '#talk' do
		it 'return the sound the animal makes' do
			animal = Lion.new('Simba')
			actual = animal.talk
			expect(actual).to eq('Simba roars')
		end
	end

	describe '#eat' do
		it 'return a message about what the animal ate' do
			animal = Lion.new('Simba')
			actual = animal.eat('a gazelle')
			expect(actual).to eq('Simba eats a gazelle. Law of the Jungle!')
		end
	end
end





