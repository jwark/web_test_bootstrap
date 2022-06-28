require 'integration/integration_spec_helper'

describe "Navigating remote website", :type => :request do

  describe "index" do
    before do
      visit('https://google.com/')
    end  

    it "loads the google homepage" do
      expect(page).to have_title('Google')
    end
  end
end
