json.key_format! camelize: :lower
json.business do
  json.extract! business, :id, :name, :latitude, :longitude, :address, :city, :state, :zip, :stars, :price, :phone_number
  json.tags tags
  json.hours hours
  json.info info
  json.reviewIds reviews.map { |rev| rev.id }
  json.photoIds photos.map { |photo| photo.id }

end


json.reviews do
  reviews.each do |rev|
    json.set! rev.id do
      json.extract! rev, :id, :business_id, :user_id, :stars, :text, :post_date
    end
  end
end

json.users do
  users.each do |user|
    json.set! user.id do
      json.extract! user, :id, :first_name, :last_name, :city, :state
      # if user.photo.attached?
      #   json.photoUrl url_for(user.photo)
      # end
    end
  end
end

json.photos do
  photos.each do |pic|
    json.set! pic.id do
      json.extract! pic, :user_id, :business_id
      json.photoUrl url_for(pic.photo)
    end
  end
end
