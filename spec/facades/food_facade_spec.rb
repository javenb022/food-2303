require "rails_helper"

RSpec.describe FoodFacade do
  it "creates a service" do
    food_service = FoodFacade.new.service

    expect(food_service).to be_a(FoodService)
  end

  it "Returns the number of total hits" do
    hits = FoodFacade.new.number_of_results("sweet potatoes")

    expect(hits).to eq(55579)
  end

  it "returns a list of 10 foods from a search" do
    results = FoodFacade.new.foods("sweet potatoes")

    expect(results.count).to eq(10)
    expect(results).to be_an Array
  end
end