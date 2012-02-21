require 'integration/integration_spec_helper'

describe "Navigating local static files", :type => :request do

  before :all do
    run_local_server
  end

  describe "index" do
    before do
      visit('index.html')
    end  

    it "loads the homepage" do
      find('h1').text.should == 'Sample Homepage'
    end

  end

end
