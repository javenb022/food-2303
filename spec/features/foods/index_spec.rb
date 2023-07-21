require "rails_helper"

RSpec.describe "Foods Index page" do
  describe "foods_path" do
    it "Lists the total number of items returned by the search" do
      visit root_path
      fill_in :q, with: "sweet potatoes"
      click_button "Search"

      expect(current_path).to eq(foods_path)
      expect(page).to have_content("Total Hits: 55579")
    end

    it "Lists 10 foods that contain the search query" do

    end
  end
end