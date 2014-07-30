class Term

  def initialize(word, language, definition)
    @word = Word.new(word, language)
    @definition = Definition.new(definition)
    save
  end

  attr_accessor(:word, :definition)

  @@all_terms = []

  def Term.all
    @@all_terms
  end

  def Term.clear
    @@all_terms = []
  end

  def Term.search(word)
    @@all_terms.select {|term| term.word.word == word }
  end

  def save
    @@all_terms << self
  end

  def delete
    @@all_terms.delete(self)
  end

end

class Word
  attr_accessor(:word, :language)

  def initialize(word, language)
    @word = word
    @language = language
  end
end

class Definition
  attr_accessor(:definition)

  def initialize(definition)
    @definition = definition
  end
end




