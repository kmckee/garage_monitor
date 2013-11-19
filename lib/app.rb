require 'sinatra'

get '/:passcode' do
  "O Hai! #{params['passcode']}"
end
