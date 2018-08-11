json.business do
  json.extract! @business, :id, :name, :latitude, :longitude, :address, :city, :state, :zip, :stars, :price, :phone_number
end
