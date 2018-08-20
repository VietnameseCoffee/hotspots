json.key_format! camelize: :lower

json.review do
  json.extract! review, :id, :business_id, :user_id, :stars, :text, :post_date
end

if business
  json.new_stars business.stars
end
