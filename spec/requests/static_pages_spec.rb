require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do

    it "should have the content 'Home'" do

    	visit '/static_pages/home'
    	page.should have_selector('h1', text: 'Friends of Rex')
    end

   	it "should have the right title" do

    	visit '/static_pages/home'
    	page.should have_selector('title', :text => "Friends of Rex | Home")
    end
  end

   describe "Help page" do

    it "should have the content 'Help'" do

    	visit '/static_pages/help'
    	page.should have_selector('h1', text: 'Help')
    end

    it "should have the right title" do

    	visit '/static_pages/help'
    	page.should have_selector('title', :text => "Friends of Rex | Help")
    end
   end

   describe "About Us" do

    it "should have the content 'About Us'" do

    	visit '/static_pages/about'
    	page.should have_selector('h1', text: 'About Us')
    end

    it "should have the right title" do

    	visit '/static_pages/about'
    	page.should have_selector('title', :text => "Friends of Rex | About Us")
    end
   end
     
  
 end

