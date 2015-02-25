When(/^Go directly to "(.*?)" front$/) do |front_name|
  visit base_url(front_name)
end
