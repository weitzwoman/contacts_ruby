class Contact
  attr_reader(:first, :last, :job, :company, :all, :id, :phones)
  @@all = []
  define_method(:initialize) do |attributes|
    @first = attributes.fetch(:first)
    @last = attributes.fetch(:last)
    @job = attributes.fetch(:job)
    @company = attributes.fetch(:company)
    @id = @@all.length + 1
    @phones = []
  end
  define_method(:save) do
    @@all.push(self)
  end
  define_singleton_method(:clear) do
    @@all = []
  end
  define_singleton_method(:all) do
    @@all
  end
  define_method(:add_phone) do |phone|
    @phones.push(phone)
  end
  define_singleton_method(:find) do |identification|
    found_contact = nil
    @@all.each do |contact|
      if contact.id() == identification.to_i
        found_contact = contact
      end
    end
    found_contact
  end
end
