
Given(/^I am on the Experience home page$/) do
  expect(page).to have_css(".util-bar-btn--#{section_href}")
end
