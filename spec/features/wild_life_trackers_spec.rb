require 'rails_helper'

RSpec.feature "WildLifeTrackers", type: :feature do
  describe "Landing Page" do
    it "contains the text 'Welcome'" do
      visit "/"
      expect(page).to have_content("Welcome")
    end

    it "can accept a animal name can store the animal in the database" do
      visit "/"
      fill_in "name", with: "Tiger"
      click_button "Save Animal"
      expect(page).to have_content("Species Welcome")
      # expect(Animal.first.name).to be "Tiger"
    end
  end

end
