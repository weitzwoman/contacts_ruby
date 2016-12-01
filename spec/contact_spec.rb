require('rspec')
require('contact')

describe(Contact) do
  describe("#initialize") do
    it('Tests for the first method') do
      test_contact = Contact.new({:first => "Tracie", :last => "Weitzman", :job => "Programmer", :company => "Epicodus"})
      expect(test_contact.first).to(eq("Tracie"))
    end
    it('Tests for the last method') do
      test_contact = Contact.new({:first => "Tracie", :last => "Weitzman", :job => "Programmer", :company => "Epicodus"})
      expect(test_contact.last).to(eq("Weitzman"))
    end
    it('Tests for the job method') do
      test_contact = Contact.new({:first => "Tracie", :last => "Weitzman", :job => "Programmer", :company => "Epicodus"})
      expect(test_contact.job).to(eq("Programmer"))
    end
    it('Tests for the company method') do
      test_contact = Contact.new({:first => "Tracie", :last => "Weitzman", :job => "Programmer", :company => "Epicodus"})
      expect(test_contact.company).to(eq("Epicodus"))
    end
  end
end
