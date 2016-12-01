class Contact
  attr_reader(:first, :last, :job, :company)
  @@all = []
  define_method(:initialize) do |attributes|
    @first = attributes.fetch(:first)
    @last = attributes.fetch(:last)
    @job = attributes.fetch(:job)
    @company = attributes.fetch(:company)
  end
  define_method(:save) do
    @@all.push(self)
  end
  define_method(:clear) do
    @@all = []
  end
  define_method(:all) do
    @@all
  end
end
