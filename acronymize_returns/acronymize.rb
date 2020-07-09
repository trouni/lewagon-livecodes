def acronymize(sentence)
  sentence.split.map { |word| word[0].capitalize }.join
end




# acronymize('') == ''
# acronymize('by the way') == 'BTW'
# acronymize('laugh Out loud') == 'LOL'
# acronymize('Bacon lettuce tomato') == 'BLT'
# acronymize('rolling on floor laughing') == 'ROFL'
# acronymize('GOOD LUCK') == 'GL'
# acronymize('best friend') == 'BF'
# acronymize('by the way')

describe '#acronymize' do
  it 'should return an empty string when given one' do
    actual = acronymize('')
    expected = ''
    expect(actual).to eq(expected)
  end

  it 'should return BTW when given by the way' do
    actual = acronymize('by the way')
    expected = 'BTW'
    expect(actual).to eq(expected)
  end

  it 'should return BTW when given by the way' do
    actual = acronymize('rolling on floor laughing')
    expected = 'ROFL'
    expect(actual).to eq(expected)
  end

  it 'should return BTW when given by the way' do
    actual = acronymize('GOOD LUCK')
    expected = 'GL'
    expect(actual).to eq(expected)
  end
end
