json.key_format! camelize: :lower

json.businesses do
  businesses.each do |biz|
    json.set! biz.id do
      json.extract! biz, :id, :name, :address, :city, :state, :price, :stars, :phone_number
      if biz.images.length != 0
        json.photoIds [biz.images.first.id]
      else
        json.photoIds []
      end

      json.categories biz.categories.map { |tag| tag.category }
      json.num_reviews biz.reviews.count
    end

    json.hot_spots hotspots
  end

end

json.photos do
  businesses.each do |biz|
    pic = biz.images.first
    if pic
      json.set! pic.id do
        json.extract! pic, :user_id, :business_id
        json.photoUrl url_for(pic.photo)
      end
    end
  end
end
