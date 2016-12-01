require('capybara/rspec')
require('./app')
require('address')
require('contact')
require('email')
require('phone')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('takes user to target route', {:type => :feature}) do
  it('clicks link and takes user to form page') do
    visit('/')
    click_link('Create new contact')
    expect(page).to have_content('New Contact')
  end
end
