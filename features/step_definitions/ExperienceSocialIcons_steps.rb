When(/^I visit the Experience home page$/) do
  visit ('http://experience.usatoday.com/america/')
end

When(/^I open the following pages (.*?)$/) do |page_url|
  visit base_url(page_url)
end

Then(/^I should see the following buttons "(.*?)"$/) do |button_name|
  expect(page).to have_css(button_name)
end
