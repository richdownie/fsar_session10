Given(/^I am on the new widget page$/) do
  @widget_new.visit
end

And(/^I fill out the new widget form$/) do
  @widget_new.name.send_keys("BOT_DATA_WidgetName#{rand(999).to_s}")
  @widget_new.description.send_keys("BOT_DATA_WidgetDescription")
end