class FoodFacade
  def initialize
    @service = FoodService.new
  end

  def search_foods(keyword)
    json = @service.search_foods(keyword)

    jason.map do |food|
      Foods.new(json)
    end
  end
end