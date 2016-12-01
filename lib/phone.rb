class Phone
  attr_reader(:type, :area_code, :number, :id)
  @@all = []
  define_method(:initialize) do |attributes|
    @type = attributes.fetch(:type)
    @area_code = attributes.fetch(:area_code)
    @number = attributes.fetch(:number)
    @id = @@all.length + 1
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
  define_singleton_method(:find) do |identification|
    found_phone = nil
    @@all.each do |phone|
      if phone.id() == identification.to_i
        found_phone = phone
      end
    end
    found_phone
  end
end
