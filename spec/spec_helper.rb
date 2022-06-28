require 'rspec-html-matchers'
require 'capybara/rspec'

Dir[File.join(File.dirname(__FILE__), '..', 'lib', '**', '*.rb')].each do |file|
  require file
end

RSpec.configure do |config|
  config.include Capybara::DSL
end
