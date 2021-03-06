require 'rspec/expectations'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'timeout'

# Using the Selenium driver as default so we can pop-open Firefox and get a
# good warm fuzzy feeling

Capybara.default_driver = :selenium


AfterStep('@pause') do
  print "Press Return to continue..."
  STDIN.getc
end

$experienceamericaweb_url = 'http://experience.usatoday.com/america'

def base_url(path)
  $experienceamericaweb_url + path
end
