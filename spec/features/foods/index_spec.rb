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

    it "Lists foods that contain the search query" do
      visit root_path
      fill_in :q, with: "sweet potatoes"
      click_button "Search"

      expect(current_path).to eq(foods_path)

      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES.")
      expect(page).to have_content("Brand: NOT A BRANDED ITEM")
      expect(page).to have_content("UPC: 8901020020844")

      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("Ingredients:")
      expect(page).to have_content("Brand: NOT A BRANDED ITEM")
      expect(page).to have_content("UPC: 832298010009")
    end
  end
end