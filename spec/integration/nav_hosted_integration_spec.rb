require 'integration/integration_spec_helper'

describe "Navigating local static files", :type => :request do

  describe "index" do
    before do
      visit('http://google.com/')
    end  

    it "loads the google homepage" do
      find('title').text.should == 'Google'
    end

  end

end
