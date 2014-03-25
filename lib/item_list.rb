require './lib/item_class'

class ItemsList
  attr_accessor :items_list

  def initialize
    @items_list = []
  end

  def create_item(text_input)
    id = items_list.length+1
    items_list << Item.new(id, text_input)
    items_list
  end

end