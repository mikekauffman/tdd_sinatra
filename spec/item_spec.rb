require_relative "../app"
require "capybara/rspec"
require "spec_helper"
Capybara.app = App

feature "managing list of items" do

  scenario "Displays current list of items" do
    visit "/"
    click_link 'Create Item'
    fill_in "new_item", :with => 'Channa Masala'
    click_on 'Create New Item'
    expect(page).to have_content 'Channa Masala'
    click_link "Show 1"
    expect(page).to have_content 'Channa Masala'
  end

  scenario "Displays 404 template page when item id doesn't exist" do
    visit "/items/10"
    expect(page).to have_content "404"
  end
end
