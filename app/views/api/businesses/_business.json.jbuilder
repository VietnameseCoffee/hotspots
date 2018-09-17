json.key_format! camelize: :lower
json.business do
  json.extract! business, :id, :name, :latitude, :longitude, :address, :city, :state, :zip, :stars, :price, :phone_number
  json.tags tags
  json.hours hours
  json.info info
  json.reviewIds reviews.map {|rev| rev.id }
  # json.photos do
  #   json.array! photos do |photo|
  #     json.photoUrl url_for(photo)
  #   end
  # end
end


json.reviews do
  reviews.each do |rev|
    json.set! rev.id do
      json.extract! rev, :id, :business_id, :user_id, :stars, :text, :post_date
      # json.photos do
      #   rev.photos.each do |photo|
      #     json.photoUrl url_for(photo)
      #   end
      # end
    end
  end
end

json.users do
  users.each do |user|
    json.set! user.id do
      json.extract! user, :id, :first_name, :last_name, :city, :state
      if user.photo.attached?
        json.photoUrl url_for(user.photo)
      end
    end
  end
end
