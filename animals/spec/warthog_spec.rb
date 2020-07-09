require_relative '../warthog'

describe Warthog do
  describe '#initialize' do
    it 'creates an instance of Warthog' do
      warthog = Warthog.new('Bob')
      expect(warthog).to be_an(Warthog)
    end
  end

  describe '#name' do
    it 'returns the name of the warthog' do
      warthog = Warthog.new('Bob')
      expect(warthog.name).to eq('Bob')
    end
  end

  describe '#talk' do
    it 'returns the sound the warthog makes' do
      warthog = Warthog.new('Bob')
      expect(warthog.talk).to eq('Bob coughs!!')
    end
  end
end