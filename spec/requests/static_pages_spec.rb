require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do

    it "should have the h1 'Friends of Rex'" do

    	visit '/static_pages/home'
    	page.should have_selector('h1', text: 'Friends of Rex')
    end

   	it "should have the right title" do

    	visit '/static_pages/home'
    	page.should have_selector('title', text: "Friends of Rex")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', text: '|Home')
    end

  end

   describe "Help page" do

    it "should have the content 'Help'" do

    	visit '/static_pages/help'
    	page.should have_selector('h1', text: 'Help')
    end

    it "should have the right title" do

    	visit '/static_pages/help'
    	page.should have_selector('title', text: "Friends of Rex")
    end
   end

   describe "About Us" do

    it "should have the content 'About Us'" do

    	visit '/static_pages/about'
    	page.should have_selector('h1', text: 'About Us')
    end

    it "should have the right title" do

    	visit '/static_pages/about'
    	page.should have_selector('title', text: "Friends of Rex")
    end
   end
     
  
 end

