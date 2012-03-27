require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Awesome" }

  describe "Home Page" do

    it "should have the content 'Home'" do
      visit root_path
      page.should have_content('Home')
    end
    
    it "should have right title" do
      visit root_path
      page.should have_selector('title', :text => "#{base_title} | Home")
    end
    
    it "should have right h1 tag with Home" do
      visit root_path
      page.should have_selector('h1', :text => "Home")
    end

    
  end # describe Home Page
    
  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end

    it "should have right title" do
      visit help_path
      page.should have_selector('title', :text => "#{base_title} | Help")
    end

    it "should have right h1 tag with Help" do
      visit help_path
      page.should have_selector('h1', :text => "Help")
    end


  end # describe Help Page
  
  describe "About page" do
  
    it "should have the content 'About'" do
      visit about_path
      page.should have_content('About')
    end
    
    it "should have right title" do
      visit about_path
      page.should have_selector('title', :text => "#{base_title} | About")
    end
    
    it "should have right h1 tag with About" do
      visit about_path
      page.should have_selector('h1', :text => "About")
    end

  end # describe About PAge

    describe "Contact Page" do

    it "should have the content 'Contact'" do
      visit contact_path
      page.should have_content('Contact')
    end
    
    it "should have right title" do
      visit contact_path
      page.should have_selector('title', :text => "#{base_title} | Contact")
    end
    
    it "should have right h1 tag with Home" do
      visit contact_path
      page.should have_selector('h1', :text => "Contact")
    end
    
  end # describe Contect Page
  
end #end of StaticPages

