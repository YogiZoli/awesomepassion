require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Awesome" }

  describe "Home Page" do

    it "should have the content 'Home'" do
      visit '/static_pages/home'
      page.should have_content('Home')
    end
    
    it "should have right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title} | Home")
    end
    
    it "should have right h1 tag with Home" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => "Home")
    end

    
  end # describe Home Page
    
  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{base_title} | Help")
    end

    it "should have right h1 tag with Help" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => "Help")
    end


  end # describe Help Page
  
  describe "About page" do
  
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
    
    it "should have right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title} | About")
    end
    
    it "should have right h1 tag with About" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => "About")
    end

  end # describe About PAge
  
  
end #end of StaticPages

