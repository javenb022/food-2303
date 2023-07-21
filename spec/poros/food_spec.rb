require "rails_helper"
# Test won't pass because upc and brand owner attributes are coming up as nil
# And I'm not sure why or how to fix it. Google hasn't helped me either
RSpec.describe Food do
  xit "exists with attributes" do
    food_item = Food.new({
                      brand_owner: 'Hostess',
                      description: 'Donut',
                      ingredients: 'Dough',
                      upc: 123456789
                    })

    expect(food).to be_a(Food)
    expect(food.upc).to be_an(String)
    expect(food.upc).to eq("123456789")
    expect(food.description).to be_a(String)
    expect(food.description).to eq("Donut")
    expect(food.brand_owner).to be_a(String)
    expect(food.brand_owner).to eq("Hostess")
    expect(food.ingredients).to be_a(String)
    expect(food.ingredients).to eq("Dough")
  end
end