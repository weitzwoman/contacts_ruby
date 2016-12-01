class Address
  attr_reader(:type, :street, :city, :state, :zip)

  define_method(:initialize) do |attributes|
    @type = attributes.fetch(:type)
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
  end
end
