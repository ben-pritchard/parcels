class Parcel
  define_method(:initialize) do |length, height, width, weight|
    @length = length
    @height = height
    @width = width
    @weight = weight
  end

  define_method(:volume) do
    @length * @height * @width
  end

  define_method(:cost_to_ship) do
    @shipping_cost = @weight * 2.0
    "$" + sprintf("%.2f", @shipping_cost)
  end
end
