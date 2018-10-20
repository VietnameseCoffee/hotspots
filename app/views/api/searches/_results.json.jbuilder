json.key_format! camelize: :lower
json.businesses do
  search_results.each do |biz|
    json.set! biz.id do
      json.extract! biz, :id, :name, :address, :city, :state, :price, :stars, :phone_number
      if biz.images.length != 0
        json.photoIds [biz.images.first.id]
      else
        json.photoIds []
      end
      json.reviewIds [biz.reviews[-1].id]
      json.categories biz.categories.map { |tag| tag.category }
      json.num_reviews biz.reviews.count
    end
  end
end

json.reviews do
  search_results.each do |biz|
    rev = biz.reviews[-1]
    if rev
      json.set! rev.id do
        json.extract! rev, :text
      end
    end
  end
end

json.photos do
  search_results.each do |biz|
    pic = biz.images.first
    if pic
      json.set! pic.id do
        json.extract! pic, :user_id, :business_id
        json.photoUrl url_for(pic.photo)
      end
    end
  end
end

result_id_arr = []
search_results.each {|el| result_id_arr.push(el.id)}
json.results result_id_arr


# Associations should be done in controller?
