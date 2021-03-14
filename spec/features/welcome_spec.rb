require 'rails_helper'

RSpec.describe "welcome Page" do
  describe "When I Visit the welcome page it" do
    it "has a headder" do
      visit "/"

      expect(page).to have_content("Welcome")
    end
  end
end
