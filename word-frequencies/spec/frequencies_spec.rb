require_relative '../frequencies'

# method signature
# - name # count_frequencies
# - parameters # text
# - return # hash of frequencies
# key -> value
# word -> num_of_times

describe '#count_frequencies' do
  it 'should return an empty hash when given empty string' do
    actual = count_frequencies('')
    expected = {}
    expect(actual).to eq(expected)
  end

  it 'should return the correct frequencies for a text' do
    frequencies = count_frequencies('the lazy dog jumped over the brown fox')
    expect(frequencies['the']).to eq(2)
    expect(frequencies['fox']).to eq(1)
    expect(frequencies['friday']).to eq(0)

  end
end
