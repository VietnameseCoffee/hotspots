json.business do
  json.extract! business, :id, :name, :latitude, :longitude, :address, :city, :state, :zip, :stars, :price, :phone_number
  json.tags tags
  json.hours hours
  json.info info
  json.reviewsIds reviews.map {|rev| rev.id }
end

json.reviews do
  reviews.each do |rev|
    json.set! rev.id do
      json.extract! rev, :id, :business_id, :user_id, :stars, :text, :post_date
    end
  end
end
