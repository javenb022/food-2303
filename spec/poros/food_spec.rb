require "rails_helper"
# Test won't pass because upc and brand owner attributes are coming up as nil
# And I'm not sure why or how to fix it. Google hasn't helped me either
RSpec.describe Food do
  it "exists with attributes" do
    food = Food.new({
                      brandOwner: 'Hostess',
                      description: 'Donut',
                      ingredients: 'Dough',
                      gtinUpc: 123456789
                    })

    expect(food).to be_a(Food)
    expect(food.upc).to be_an(Integer)
    expect(food.upc).to eq(123456789)
    expect(food.description).to be_a(String)
    expect(food.description).to eq("Donut")
    expect(food.brand_owner).to be_a(String)
    expect(food.brand_owner).to eq("Hostess")
    expect(food.ingredients).to be_a(String)
    expect(food.ingredients).to eq("Dough")
  end
end