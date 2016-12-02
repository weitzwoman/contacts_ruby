class Phone
  attr_reader(:type, :area_code, :number)
  define_method(:initialize) do |attributes|
    @type = attributes.fetch(:type)
    @area_code = attributes.fetch(:area_code)
    @number = attributes.fetch(:number)
  end
end
