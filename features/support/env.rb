#ref: https://github.com/jnicklas/capybara
require 'capybara'
require 'site_prism'
require 'pry'

require 'require_all'
require_all 'lib'
require_all 'lib/pages'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, { browser: :firefox })
end

Capybara.default_driver = :selenium
Capybara.app_host = 'http://fanwise.github.io/TW_homework4'
