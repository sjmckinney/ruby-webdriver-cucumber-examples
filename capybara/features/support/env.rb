require 'bundler/setup'
require 'capybara/cucumber'
require 'rspec/expectations'
require 'selenium-webdriver'

Capybara.default_driver = :selenium

=begin

remote webdriver

url = 'http://192.168.56.1:4444/wd/hub' # hub address

#caps = Selenium::WebDriver::Remote::Capabilities.chrome

#caps = Selenium::WebDriver::Remote::Capabilities.firefox


caps = Selenium::WebDriver::Remote::Capabilities.internet_explorer
caps.platform = :WINDOWS

caps = Selenium::WebDriver::Remote::Capabilities.edge
#Note that Capabilites correspond to 	


Capybara.register_driver :selenium do |app|
Capybara::Selenium::Driver.new(app,
       :browser => :remote,
       :url => url,
       :desired_capabilities => caps)
end

=end

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome
end

Capybara.current_driver = :selenium
Capybara.javascript_driver = :selenium
