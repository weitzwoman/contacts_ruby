require('rspec')
require('address')

describe(Address) do
  describe("#initialize") do
    it('tests for the type of address') do
      test_address = Address.new({:type => "home", :street => "100 Apple Avenue", :city => "Portland", :state => "OR", :zip => "97201"})
      expect(test_address.type).to(eq("home"))
    end
    it('tests for the street of address') do
      test_address = Address.new({:type => "home", :street => "100 Apple Avenue", :city => "Portland", :state => "OR", :zip => "97201"})
      expect(test_address.street).to(eq("100 Apple Avenue"))
    end
    it('tests for the city of address') do
      test_address = Address.new({:type => "home", :street => "100 Apple Avenue", :city => "Portland", :state => "OR", :zip => "97201"})
      expect(test_address.city).to(eq("Portland"))
    end
    it('tests for the state of address') do
      test_address = Address.new({:type => "home", :street => "100 Apple Avenue", :city => "Portland", :state => "OR", :zip => "97201"})
      expect(test_address.state).to(eq("OR"))
    end
    it('tests for the zip of address') do
      test_address = Address.new({:type => "home", :street => "100 Apple Avenue", :city => "Portland", :state => "OR", :zip => "97201"})
      expect(test_address.zip).to(eq("97201"))
    end
  end
end
