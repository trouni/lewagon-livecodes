require_relative '../warthog'

describe Warthog do
  describe '#initialize' do
    it 'creates a Warthog instance' do
      warthog = Warthog.new('Fred')
      expect(warthog).to be_a(Warthog)
    end
  end

  describe '#talk' do
    it 'returns a sentence stating the warthog is grunting' do
      warthog = Warthog.new('Fred')
      expect(warthog.talk).to eq('Fred grunts')
    end
  end
end