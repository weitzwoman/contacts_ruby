require('rspec')
require('phone')

describe(Phone) do
  describe('#initialize') do
    it('tests for the type of phone number') do
      test_phone = Phone.new({:type => "cell", :area_code => "503", :number => "555-1101"})
      expect(test_phone.type).to(eq("cell"))
    end
    it('tests for the area_code of phone number') do
      test_phone = Phone.new({:type => "cell", :area_code => "503", :number => "555-1101"})
      expect(test_phone.area_code).to(eq("503"))
    end
    it('tests for the number of phone number') do
      test_phone = Phone.new({:type => "cell", :area_code => "503", :number => "555-1101"})
      expect(test_phone.number).to(eq("555-1101"))
    end
  end
end
