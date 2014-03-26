require './lib/item_list'
require 'rspec/core'

describe 'ItemsList' do

  it "creates an array with Pizza in it and 1 as the id" do
    item_array = ItemsList.new
    item_array.create_item("Pizza")
    actual = item_array.items_list
    expected = [Item.new(1, "Pizza")]
    expect(actual).to eq expected
  end
  it "allows user to edit item" do
    item_array = ItemsList.new
    item_array.create_item("Pizza")
    expected = [Item.new(1, "Beer")] #[[1, "Beer"], [2, "Sushi"]]
    item_array.edit_item("Beer", 1)
    actual = item_array.items_list
    expect(actual).to eq expected
  end
end