When(/^I request the main door open or close$/) do
  visit_page(MainPage).open_main_door
end
Then(/^I should see a message indicating that the main door was opened or closed$/) do
  on_page(MainPage).message.should include "Main door opened or closed."
end
When(/^I request the secondary door open or close$/) do
  visit_page(MainPage).open_secondary_door
end
Then(/^I should see a message indicating that the secondary door was opened or closed$/) do
  on_page(MainPage).message.should include "Secondary door opened or closed."
end
