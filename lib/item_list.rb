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
  def show_item(id)
    @items_list.each do |item|
      if item.id == id.to_i
        return item.name
      end
    end
  end

end