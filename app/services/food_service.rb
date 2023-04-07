class FoodService
 
  def initialize
    @api_key = Figaro.env.api_key
  end
 
  def get_url(url, params = {})
    response = conn.get(url, params.merge(api_key: @api_key))
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def search_foods(keyword)
    get_url("foods/search?query=#{keyword}")
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/")
  end
end
