Given(/^I am on the YouTube home page$/) do
  visit 'http://www.youtube.com'
end

When(/^I search for "(.*?)"/) do |search_term|
  #fill_in 'search_query', :with => search_term
    #or
  #fill_in 'masthead-search-term', :with => search_term
    #or
  page.find(:xpath, '//*[@id="masthead-search-term"]').set search_term
  #page.find('#masthead-search-term').set search_term
    #or
  #page.find(:id, 'masthead-search-term').set search_term    
  click_on 'search-btn'
    #wait for page title to change
    #page.has_title?("capybara - YouTube")
    #or
    page.has_title?(/capybara/, wait: 5)
end

Then(/^videos of large rodents are returned$/) do
    #page.should have_content 'Pet' #deprecated in RSpec use expect syntax instead
    expect(page).to have_content("Pet")
    #byebug
end

#css    #masthead-search-term
#xpath  //*[@id="masthead-search-term"]

Capybara.add_selector(:id) do
    css { |id| "input[id='#{id}']" }
end
