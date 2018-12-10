require 'piglatin'

describe '#piglatinize' do
  let(:vowels_translations) { %w[eatway eatay eathay eatyay eatnay] }
  let(:translations_pairs) { vowels_translations.product('wagon') }

  it 'should not translate one-letter words' do
    expect(piglatinize('p')).to eq 'p'
  end

  it 'should handle words beignning with a vowel' do
    expect(vowels_translations).to include piglatinize('eat')
  end

  it 'should handle words beginning with a consonant' do
    expect(piglatinize('wagon')).to eq 'agonway'
  end

  it 'should handle words beginning with several consonants' do
    expect(piglatinize('crazy')).to eq 'azycray'
  end

  it 'should translate a sentence including white spaces' do
    translations = []
    vowels_translations.each { |tr| translations << "#{tr} agonway" }
    expect(translations).to include piglatinize('eat wagon')
  end

  it 'should translate any sentence with special characters' do
    translations = []
    vowels_translations.each { |tr| translations << "#{tr}, agonway!!" }
    expect(translations).to include piglatinize('eat, wagon!!')
  end
end
