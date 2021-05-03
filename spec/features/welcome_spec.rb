require 'rails_helper'

RSpec.describe "welcome Page" do
  describe "When I Visit the welcome page it" do
    it "has a headder" do
      visit "/"

      expect(page).to have_content("Welcome")
    end

    it "shows a link to ceate a Sign-In or register" do
      visit "/"

      expect(page).to have_field(:email)
      expect(page).to have_field(:password)
      expect(page).to have_button("Sign-In")
      expect(page).to have_button("Create Account")
    end

    it "'Create Account' redirects me to the create user page" do
      visit "/"

      click_button("Create Account")

      expect(current_path).to eq("/users/new")
    end

    it "'Sign-In' with valid info redirects me to the user dashboard" do
      user = User.create!(name: "Name", email: "my@email.com", password: "Password")
      visit "/"

      fill_in :email, with: user.email
      fill_in :password, with: user.password
      click_button("Sign-In")

      expect(current_path).to eq(user_path(user))
    end

    it "'Sign-In' with invalid info renders a flash error in the welcome page" do
      visit "/"

      fill_in :email, with: "not an email"
      fill_in :password, with: "Not a Password"
      click_button("Sign-In")

      expect(page).to have_content("Invalid email or password")
    end
  end
end
