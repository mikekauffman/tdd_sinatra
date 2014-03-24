require_relative "../app"
require "capybara/rspec"
require "spec_helper"
Capybara.app = App

feature "managing list of items" do

  scenario "Displays current list of items" do
  visit "/"
    click_link "Create Item"
    fill_in "new_item", :with => "Channa Masala"
    click_on "Create New Item"
    expect(page).to have_content("Channa Masala")

  end
end
