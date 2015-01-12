require ('rspec')
require ('parcels')
require ('pry')

describe(Parcel) do
  describe('#volume') do
    it('takes values from user and returns the volume') do
      test_parcel = Parcel.new(3, 4, 5, 10)
      expect(test_parcel.volume()).to(eq(60))
    end
  end

  describe('#cost_to_ship') do
    it('returns the cost to ship based on weight') do
      test_parcel = Parcel.new(3, 4, 5, 10)
      expect(test_parcel.cost_to_ship()).to(eq("$20.00"))
    end
  end
end
