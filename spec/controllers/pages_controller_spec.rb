# http://stackoverflow.com/questions/6296235/undefined-method-get-for-rspeccoreexamplegroupnested-10x00000106db51f

require 'spec_helper'
require 'rails_helper'

describe PagesController, :type => :controller do
  render_views

  describe "GET 'home'" do
    subject { response }
    it "should be successful" do
      get 'home'
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "should get the right title" do
      get 'home'
      expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "should have the right title" do
      get 'contact'
      expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
    
    it "should have the right title" do
      get 'about'
      expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | About")
    end
    
  end

end
