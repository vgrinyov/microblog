require 'rails_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should  have the content 'Microblog'" do
      visit root_path
      expect(page).to have_content('Microblog')
    end
    it "should have the base title" do
      visit root_path
      expect(page).to have_title("Microblog")
    end
    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    it "should  have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("Microblog | Help")
    end
  end

  describe "About page" do
    it "should  have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit about_path
      expect(page).to have_title("Microblog | About Us")
    end
  end
  describe "Contact" do
    it "should  have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end
    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("Microblog | Contact")
    end
  end
end
