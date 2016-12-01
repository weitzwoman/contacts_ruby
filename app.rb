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
  @contacts = Contact.all()
    erb(:success_contact)
end

get('/contact_list') do
  @contacts = Contact.all()
  erb(:contact_list)
end

get('/contact_list/:id') do
  @contact = Contact.find(params.fetch('id').to_i)
  erb(:contact_page)
end

get('/contact_list/:id/phone_form') do
  @contact = Contact.find(params.fetch('id').to_i)
  erb(:phone_form)
end

post('/new_phone') do
  @contact = Contact.find(params.fetch('phone_id').to_i)
  @new_phone = Phone.new({:type => params.fetch("type"), :area_code => params.fetch("area"), :number => params.fetch("number")})
  @contact.add_phone(@new_phone)
  erb(:success_phone)
end

get('/contact_list/:id/phone_details') do
  @contact = Contact.find(params.fetch('id').to_i)
  erb(:phone_details)
end
