When(/^I visit the Experience home page$/) do
  visit ('http://experience.usatoday.com/america/')
end

When(/^I open the following pages (.*?)$/) do |page_url|
  visit base_url(page_url)
end

Then(/^I should see the following buttons$/) do |button_name|
    page.should have_selector(".exp-util-bar-btn.util-bar-btn.util-bar-btn-#{button_name}")
end

Given(/^I am on the url$/) do |url|
  visit base_url(page_url)
end

When(/^I click on the sharebutton (.?)$/) do |share_button|
  withing pending # express the regexp above with the code you wish you had
end

Then(/^the new window opens$/) do
  pending # express the regexp above with the code you wish you had
end
