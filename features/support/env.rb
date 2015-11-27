#ref: https://github.com/jnicklas/capybara
require 'capybara'
require 'capybara/cucumber'
require 'pry'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, { browser: :firefox })
end

Capybara.default_driver = :selenium
Capybara.app_host = 'http://fanwise.github.io/TW_homework4'
