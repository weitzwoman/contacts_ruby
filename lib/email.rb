class Email
  attr_reader(:type, :address)
  define_method(:initialize) do |attributes|
    @type = attributes.fetch(:type)
    @address = attributes.fetch(:address)
  end
end
