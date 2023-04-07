require 'rails_helper'

RSpec.describe 'home page, index', type: :feature do 
  describe " As a visitor" do
    before :each do
      visit "/"
    end
  describe "when I visit the home page " do
    context " and I fill in the seach form with sweet potatoes and click seach" do
      it "then I should be taken to the foods show page " do 
        expect(page).to have_filed(:q)
        expect(page).to have_button("Search")
        fill_in :q, with "sweet potatoes"
        
      end
    end
  end
end