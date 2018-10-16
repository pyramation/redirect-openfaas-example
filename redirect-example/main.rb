require 'sinatra'

set :port, 8080
set :bind, '0.0.0.0'

open('/tmp/.lock', 'w') { |f|
  f.puts "Service started"
}

get '/' do
  'Hello!'
end

get '/redirect' do
  redirect "http://google.com"
end

get '/hello' do
  'Hello! there'
end
