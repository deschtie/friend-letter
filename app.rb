require('sinatra')

set :bind, '0.0.0.0'
set :port, 3000

get('/')do
  @recipient = "Jessica"
  @sender = "Jane"
  erb(:letter)
end

get('/favorite_photos') do
  @recipient = "Jessica"
  @sender = "Jane"
  erb(:favorite_photos)
end

get('/australia') do
  @recipient = "Jessica"
  @sender = "Jane"
  erb(:australia)
end

get('/greeting_form')do
  erb(:form)
end

get('/greeting_card')do
  @sender = params.fetch('sender')
  @recipient = params.fetch('recipient')
  erb(:greeting_card)
end