require_relative "../app"
require "capybara/rspec"
require "spec_helper"
Capybara.app = App

feature "managing list of items" do

  scenario "Displays current list of items" do
  visit "/"


  end

end
