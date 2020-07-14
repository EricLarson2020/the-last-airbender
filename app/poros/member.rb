class Member
  attr_reader :name, :allies, :enemies, :affiliation, :url
  def initialize(data)

    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @url = data[:url]
  end


end
