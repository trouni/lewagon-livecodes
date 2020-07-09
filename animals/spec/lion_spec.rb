require_relative '../lion'

describe Lion do
  describe '#initialize' do
    it 'creates an instance of Lion' do
      lion = Lion.new('Scarre')
      expect(lion).to be_an(Lion)
    end
  end

  describe '#name' do
    it 'returns the name of the lion' do
      lion = Lion.new('Scarre')
      expect(lion.name).to eq('Scarre')
    end
  end

  describe '#talk' do
    it 'returns the sound the lion makes' do
      lion = Lion.new('Scarre')
      expect(lion.talk).to eq('Scarre meows!!')
    end
  end

  describe '#eat(food)' do
    it 'overwrites the Animal#eat method by adding `Law of the Jungle!`' do
      lion = Lion.new('Scarre')
      sentence = lion.eat('a gazelle')
      expect(sentence).to eq('Scarre eats a gazelle. Law of the Jungle!')
    end
  end
end





