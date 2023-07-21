class FoodService

  def search_foods(search)
    get_url("/fdc/v1/foods/search?query=#{search}")
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov") do |req|
      req.headers["X-API-KEY"] = ENV['X-API-KEY']
    end
  end

  def get_url(url, params = {})
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end
end