class Contacts
  attr_reader(:first, :last, :job, :company)

  define_method(:initialize) do |attributes|
    @first = attributes.fetch(:first)
    @last = attributes.fetch(:last)
    @job = attributes.fetch(:job)
    @company = attributes.fetch(:company)
  end
end
