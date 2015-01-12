class Parcel
  define_method(:initialize) do |length, height, width|
    @length = length
    @height = height
    @width = width
  end

  define_method(:volume) do
    @volume = @length * @height * @width
  end
end
