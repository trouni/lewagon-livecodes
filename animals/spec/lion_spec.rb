require_relative '../lion'

describe Lion do
  describe '#initialize' do
    it 'creates a Lion instance' do
      lion = Lion.new('Simba')
      expect(lion).to be_a(Lion)
    end
  end

  describe '#talk' do
    it 'returns a sentence stating the lion is roaring' do
      lion = Lion.new('Andrew')
      expect(lion.talk).to eq('Andrew roars')
    end
  end

  describe '#eat' do
    it 'overrides Animal#eat with a cruel sentence' do
      lion = Lion.new('Andrew')
      sentence = lion.eat('black liquorice')
      expect(sentence).to eq('Andrew eats black liquorice. Law of the Jungle!')
    end
  end
end