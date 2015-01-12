require ('sinatra')
require ('sinatra/reloader')
require ('./lib/parcels')
require ('pry')

get ('/') do
  erb(:form)
end

get('/results') do
  @height1 = params.fetch("height").to_i()
  @width1 = params.fetch("width").to_i()
  @length1 = params.fetch("length").to_i()
  @weight1 = params.fetch("weight").to_i()

  parcel = Parcel.new(@length1, @width1, @height1, @weight1)

  @cost_to_ship1 = parcel.cost_to_ship()

  erb(:results)
end
