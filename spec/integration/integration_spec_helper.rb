require 'spec_helper'
require 'capybara/apparition'

Capybara.javascript_driver = :apparition
Capybara.default_driver = :apparition
Capybara.run_server = false
