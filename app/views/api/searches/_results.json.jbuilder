json.key_format! camelize: :lower
json.businesses do
search_results.each do |biz|
    json.set! biz.id do
      json.extract! biz, :id, :name, :address, :city, :state, :price, :stars, :phone_number

      json.categories biz.categories.map { |tag| tag.category }
      json.num_reviews biz.reviews.count
    end
  end
end

result_id_arr = []
search_results.each {|el| result_id_arr.push(el.id)}
json.results result_id_arr


# Associations should be done in controller?
