require 'selenium-webdriver'

Before do

  @driver = Selenium::WebDriver.for :firefox, marionette: true

end

After do

  @driver.quit

end