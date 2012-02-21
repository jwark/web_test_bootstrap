require 'spec_helper'
require 'capybara/rspec'
require 'thin'

Capybara.default_driver = :selenium
Capybara.run_server = false

def run_local_server(dir='sample_site')
  Capybara.app_host = 'http://127.0.0.1:3000/'

  Thread.new do
    @thin = Thin::Server.start('127.0.0.1', 3000) do
      root=File.join(File.dirname(__FILE__), '..', '..', dir)
      run Rack::Directory.new("#{root}")
    end
  end
end