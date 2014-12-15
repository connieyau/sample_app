# http://stackoverflow.com/questions/6296235/undefined-method-get-for-rspeccoreexamplegroupnested-10x00000106db51f

require 'spec_helper'
require 'rails_helper'

describe PagesController, :type => :controller do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

end
