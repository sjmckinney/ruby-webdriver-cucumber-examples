Given(/^I am on the YouTube home page$/) do

  @driver.get('https://www.youtube.com')

end

When(/^I search for "(.*?)"/) do |search_term|

  @driver.find_element(:xpath, '//*[@id="masthead-search-term"]').send_keys search_term
  @driver.find_element(:id,'search-btn').click
  wait = Selenium::WebDriver::Wait.new(timeout: 5)
  wait.until{ @driver.title['capybara'] }

end

Then(/^videos of large rodents are returned$/) do

  expect(@driver.page_source).to include('capybara')

end
