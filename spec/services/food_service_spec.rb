require "rails_helper"

RSpec.describe FoodService do
  describe "Can connect and consume an api" do
    it "can search based on a query" do
      search = FoodService.new.search_foods("sweet potatoes")

      expect(search).to be_a(Hash)
      expect(search).to have_key(:totalHits)
      expect(search).to have_key(:foods)
    end

    it "can connect to base url" do
      api_call = FoodService.new.conn

      expect(api_call).to be_a(Faraday::Connection)
    end

    it "can parse the json from a url" do
      parsed = FoodService.new.get_url("/fdc/v1/foods/search?query=sweet potatoes")

      expect(parsed).to be_a(Hash)
      expect(parsed).to have_key(:totalHits)
      expect(parsed).to have_key(:foods)
    end
  end
end