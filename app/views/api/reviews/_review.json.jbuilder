json.key_format! camelize: :lower

json.extract! review, :id, :business_id, :user_id, :stars, :text, :post_date
