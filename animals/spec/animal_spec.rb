require_relative '../animal'

describe Animal do
  describe '#initialize' do
    it 'creates an instance of Animal' do
      animal = Animal.new('Jerriah')
      expect(animal).to be_an(Animal)
    end
  end

  describe '#name' do
    it 'returns the name of the animal' do
      animal = Animal.new('Jerriah')
      expect(animal.name).to eq('Jerriah')
    end
  end

  describe '::phyla' do
    it 'returns an array of the four phyla of the animal kingdom' do
      phyla = Animal.phyla
      expected = [ 'the wormy ones', 'the mollusc stuff', 'more worms', 'the symmetrical with a butt' ]
      expect(phyla).to eq(expected)
    end
  end

  describe '#eat(food)' do
    it 'returns a sentence describing what the animal eats' do
      animal = Animal.new('Jerriah')
      sentence = animal.eat('cat food')
      expect(sentence).to eq('Jerriah eats cat food.')
    end
  end
end












