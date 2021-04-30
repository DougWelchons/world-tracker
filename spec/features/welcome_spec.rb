require 'rails_helper'

RSpec.describe "welcome Page" do
  describe "When I Visit the welcome page it" do
    it "has a headder" do
      visit "/"

      expect(page).to have_content("Welcome")
    end

    it "shows a link to ceate a new campaign" do
      visit "/"

      within ".header" do
        expect(page).to have_button("New Campaign")
      end
    end
  end

  describe "when the 'New Campaign' link is clicked it" do
    it "redirects me to the campaign new page" do
      visit "/"

      click_button("New Campaign")

      expect(current_path).to eq("/campaigns/new")
    end
  end
end
