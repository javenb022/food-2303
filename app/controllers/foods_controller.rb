class FoodsController < ApplicationController
  def index
    @food_facade = FoodFacade.new.foods(params[:q])
    @results = FoodFacade.new.number_of_results(params[:q])
  end
end