When(/^I request the main door open or close$/) do
  visit_page(MainPage).open_main_door
end
Then(/^I should see a message indicating that the main door was opened or closed$/) do
  on_page(MainPage).message.should include "Main door opened or closed."
end
Then(/^the main door should open or close$/) do
    pending # express the regexp above with the code you wish you had
end
