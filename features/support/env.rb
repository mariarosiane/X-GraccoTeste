require 'selenium-webdriver'
require 'RSpec' 
require 'site_prism' 
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
#require 'capybara/cucumber'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Selenium::WebDriver::Chrome.driver_path = 'chromedriver.exe'
Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'http://qa.xgracco.com.br'
    config.default_max_wait_time = 10
end

Capybara.add_selector(:class) do
    xpath { |cls| XPath.descendant[XPath.attr(:class) == cls.to_s] }
end



