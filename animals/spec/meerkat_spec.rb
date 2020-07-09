require_relative '../meerkat'

describe Meerkat do
  describe '#initialize' do
    it 'creates an instance of Meerkat' do
      meerkat = Meerkat.new('Mr. Peanut')
      expect(meerkat).to be_an(Meerkat)
    end
  end

  describe '#name' do
    it 'returns the name of the meerkat' do
      meerkat = Meerkat.new('Mr. Peanut')
      expect(meerkat.name).to eq('Mr. Peanut')
    end
  end

  describe '#talk' do
    it 'returns the sound the meerkat makes' do
      meerkat = Meerkat.new('Mr. Peanut')
      expect(meerkat.talk).to eq('Mr. Peanut yaps.')
    end
  end
end