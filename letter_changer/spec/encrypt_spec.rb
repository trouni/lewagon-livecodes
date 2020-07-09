require_relative '../encrypt'
# method signature
# -name
# -parameters
# -return

describe '#encrypt' do
  it 'should return an empty string when give one' do
    actual = encrypt('')
    expected = ''
    expect(actual).to eq(expected)
  end

  it 'should return the correct encrypted message when given a string' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end
end


