require 'selenium-webdriver'

Before do

  #@driver = Selenium::WebDriver.for :firefox, marionette: true
  @driver = Selenium::WebDriver.for :chrome

end

After do

  @driver.quit

end
