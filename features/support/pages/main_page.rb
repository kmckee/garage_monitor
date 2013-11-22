class MainPage
  include PageObject
  page_url('http://localhost:4567/')
  button(:open_main_door, :id => 'openMainDoor')
  div(:message, :id => 'message')
end
