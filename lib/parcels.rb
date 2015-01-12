class Parcel
  define_method(:initialize) do |length, height, width|
    @length = length
    @height = height
    @width = width
    @volume = @length * @height * @width
    @shipping_cost = 0.01
  end

  define_method(:volume) do
    @volume
  end

  define_method(:cost_to_ship) do
    @shipping_cost = @volume * 2.00 / 100.00

    "$" + sprintf("%.2f", @shipping_cost)
  end
end
