require 'rspec'
require 'dictionary'

describe Term do
  it 'Initializes Term instance with word and definition' do
    new_term = Term.new('carrot', 'english', 'Food')
    expect(new_term.word.word).to eq 'carrot'
    expect(new_term.definition.definition).to eq 'Food'
  end

  it 'edits word and definition' do
    new_term = Term.new('carrot', 'english', 'Food')
    expect(new_term.word=('big carrot')).to eq 'big carrot'
    expect(new_term.definition=('Big food')).to eq 'Big food'
  end

  it 'deletes its self' do
    Term.clear
    new_term = Term.new('carrot', 'english', 'Food')
    new_term.delete
    expect(Term.all).to eq []
  end

  it 'find by word' do
    Term.clear
    new_term = Term.new('carrot', 'english', 'Food')
    expect(Term.search('carrot')).to eq [new_term]
  end

end
