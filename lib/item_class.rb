class Item
  attr_accessor :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end
  def ==(other)
    self.id == other.id
  end
end
