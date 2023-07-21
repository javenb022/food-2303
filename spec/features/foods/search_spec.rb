require "rails_helper"

RSpec.describe "Search Form" do
  describe "root_path" do
    it "has a search form to search foods" do
      visit root_path

      expect(page).to have_field("q")

      fill_in :q, with: "sweet potatoes"
      click_button "Search"

      expect(current_path).to eq(foods_path)
    end
  end
end