require 'piglatin'

describe '#piglatinize' do

  let(:vowels_translations) { %w[eatway eatay eathay eatyay eatnay] }
  let(:translations_pairs) { vowels_translations.product('wagon') }

  it 'should return a string' do
    expect(piglatinize('')).to be_a String
  end

  it 'should not translate one-letter words' do
    expect(piglatinize('p')).to eq 'p'
  end

  it 'words beginning with a vowel should end with one of the following suffixes: ay way hay yay nay' do
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
    vowels_translations.each { |v_translation| translations << "#{v_translation} agonway" }
    expect(translations).to include piglatinize('eat wagon')
  end

  it 'should translate any sentence with special characters' do
    translations = []
    vowels_translations.each { |v_translation| translations << "#{v_translation}, agonway!!" }
    expect(translations).to include piglatinize('eat, wagon!!')
  end
end
