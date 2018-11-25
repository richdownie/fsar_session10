require 'selenium-webdriver'
require 'webdrivers'
require 'cucumber'
require 'rspec'
require 'pry'
require_relative '../page_objects/widgets_index_page'
require_relative '../page_objects/widget_new_page'

caps = Selenium::WebDriver::Remote::Capabilities.chrome(chromeOptions: { args: [ "--headless" ]})

Before do
  if ENV["HEADLESS"]
    @browser = Selenium::WebDriver.for :chrome, desired_capabilities: caps
  else
    @browser = Selenium::WebDriver.for :chrome
  end
  @domain = 'https://fullstackautomationwithruby.com'
  @widgets_index = WidgetsIndex.new(@browser, @domain)
  @widget_new = WidgetNew.new(@browser, @domain)
end
