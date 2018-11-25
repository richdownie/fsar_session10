Given /I am on the fsar widgets page/ do
  @widgets_index.visit
end

Then /I verify widgets display on the page/ do
  @browser.find_element(:id, 'widgets').displayed?
end

Then /I verify the widgets table has "(.*)" rows/ do |row_count|
  rows = @browser.find_elements(css: '#widgets_table tr').count - 1
  expect(rows).to eql(row_count.to_i)
end

Given(/^I am on the new widget page$/) do
  @widget_new.visit
end

And(/^I fill out the new widget form$/) do
  @widget_new.name.send_keys("BOT_DATA_WidgetName#{rand(999).to_s}")
  @widget_new.description.send_keys("BOT_DATA_WidgetDescription")
end