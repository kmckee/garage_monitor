class MainPage
  include PageObject
  page_url('http://localhost:9393/')
  button(:open_main_door, :id => 'openMainDoor')
  button(:open_secondary_door, :id => 'openSecondaryDoor')
  div(:message, :id => 'message')
end
