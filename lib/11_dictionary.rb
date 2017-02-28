class Dictionary
  attr_reader :entries, :keywords
  def initialize
    @entries = {}
  end

  def add(hash)
    @entries = hash
    @keywords = hash[keys]
  end
end
