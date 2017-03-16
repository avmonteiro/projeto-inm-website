
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'


Capybara.register_driver :untrusted_selenium do |app|
	profile = Selenium::WebDriver::Firefox::Profile.new
  profile.assume_untrusted_certificate_issuer = false
  capabilities = Selenium::WebDriver::Remote::Capabilities.firefox(marionette: false)
  Capybara::Selenium::Driver.new(app, profile: profile, 
                                      desired_capabilities: capabilities)
end


Capybara.default_driver = :untrusted_selenium
Capybara.default_max_wait_time = 1