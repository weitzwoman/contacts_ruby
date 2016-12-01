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

post('/new_contact') do
  new_contact = Contact.new({:first => params.fetch("first"), :last => params.fetch("last"), :job => params.fetch("job"), :company => params.fetch("company")})
  new_contact.save()
  erb(:success_contact)
end

get('/contact_list') do
  erb(:contact_list)
end
