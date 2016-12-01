require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/address')
require('./lib/contact')
require('./lib/email')
require('./lib/phone')
require('pry')

get('/') do
  erb(:index)
end

get('/contact_form') do
  erb(:contact_form)
end
