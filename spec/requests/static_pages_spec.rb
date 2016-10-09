require 'rails_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should  have the content 'Microblog'" do
      visit 'static_pages/home'
      expect(page).to have_content('Microblog')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Microblog | Home")
    end
  end

  describe "Help page" do
    it "should  have the content 'Help'" do
      visit 'static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Microblog | Help")
    end
  end

  describe "About page" do
    it "should  have the content 'About Us'" do
      visit 'static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Microblog | About Us")
    end
  end
end
