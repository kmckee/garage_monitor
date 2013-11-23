require 'sinatra'
require_relative 'door_opener'

set :environment, :development
set :port, 9393

class Fake
  def method_missing
  end
end

if (settings.environment == :development)
  main_door = Fake.new 
  secondary_door = Fake.new 
  time_to_hold_button = 0
else
  require 'pi_piper'
  main_door = PiPiper::Pin.new(:pin => 4, :direction => :out)
  secondary_door = PiPiper::Pin.new(:pin => 17, :direction => :out)
  time_to_hold_button = 0.5
end

@door_opener = DoorOpener.new(main_door, secondary_door, time_to_hold_button)

get '/' do
  erb :index
end
post '/open_main_door' do
  @message = "Main door opened or closed."
  erb :index
end
post '/open_secondary_door' do
  @message = "Secondary door opened or closed."
  erb :index
end
