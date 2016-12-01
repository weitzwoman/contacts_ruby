require('capybara/rspec')
require('./app')
require('address')
require('contact')
require('email')
require('phone')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('takes user to target route', {:type => :feature}) do
  before() do
    visit('/')
    click_link('Create new contact')
  end
  it('clicks link and takes user to form page') do
    expect(page).to have_content('New Contact')
  end
  it('clicks submit and takes user to new Contact success page') do
    fill_in("first", :with => "Ezra")
    fill_in("last", :with => "Sandzer-Bell")
    fill_in("job", :with => "Writer")
    fill_in("company", :with => "Siteworks")
    click_button("Submit New Contact")
    expect(page).to have_content('Success! You made a new Contact')
  end
  it('click link and take user to Contact List page, tests for successfully appending contact name') do
    # fill_in("first", :with => "Ezra")
    # fill_in("last", :with => "Sandzer-Bell")
    # fill_in("job", :with => "Writer")
    # fill_in("company", :with => "Siteworks")
    click_button("Submit New Contact")
    click_link('View contact list')
    expect(page).to have_content("Ezra")
  end
  it('click name of contact to view full contact details') do
    fill_in("first", :with => "Tracie")
    fill_in("last", :with => "Weitzman")
    fill_in("job", :with => "Firefighter")
    fill_in("company", :with => "Station")
    click_button("Submit New Contact")
    click_link('View contact list')
    expect(page).to have_content("Tracie")
    click_link('Tracie Weitzman')
    expect(page).to have_content("Tracie")
  end
end
