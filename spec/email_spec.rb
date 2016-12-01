require('rspec')
require('email')

describe(Email) do
  describe("#initialize") do
    it('tests the email type') do
      test_email = Email.new({:type => "work", :address => "me@gmail.com"})
      expect(test_email.type).to(eq("work"))
    end
    it('tests the email address') do
      test_email = Email.new({:type => "work", :address => "me@gmail.com"})
      expect(test_email.address).to(eq("me@gmail.com"))
    end
  end
end
