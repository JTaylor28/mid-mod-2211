require "rails_helper"

RSpec.describe "instance methods" do
  before :each do
    @food_service = FoodService.new
  end

  describe "#search_foods" do
    it "retrieves movies based on search params" do
      expect(@food_service.search_foods("sweet potatoes")).to be_a(Hash)
    end
  end
end