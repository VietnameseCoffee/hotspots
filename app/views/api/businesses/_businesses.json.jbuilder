json.key_format! camelize: :lower

json.businesses do
  businesses.each do |biz|
    json.set! biz.id do
      json.extract! biz, :id, :name, :address, :city, :state, :price, :stars, :phone_number

      json.categories biz.categories.map { |tag| tag.category }
      json.num_reviews biz.reviews.count
    end

    json.hot_spots hotspots
  end

end
