class FoodFacade

  def foods(search)
    json = service.search_foods(search)
    foods = json[:foods].take(10).map do |food_data|
      Food.new(food_data)
    end
  end

  def number_of_results(search)
    json = service.search_foods(search)
    json[:totalHits]
  end

  def service
    FoodService.new
  end
end