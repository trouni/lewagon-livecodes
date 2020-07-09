require_relative '../meerkat'

describe Meerkat do
  describe '#initialize' do
    it 'creates a Meerkat instance' do
      meerkat = Meerkat.new('Robert')
      expect(meerkat).to be_a(Meerkat)
    end
  end

  describe '#talk' do
    it 'returns a sentence stating the meerkat is barking' do
      meerkat = Meerkat.new('Robert')
      expect(meerkat.talk).to eq('Robert barks')
    end
  end
end