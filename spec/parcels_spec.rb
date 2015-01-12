require ('rspec')
require ('parcels')

describe(Parcel) do
  describe('#volume') do
    it('takes values from user and returns the volume') do
      test_parcel = Parcel.new(3, 4, 5)
      expect(test_parcel.volume()).to(eq(60))
    end
  end
end
