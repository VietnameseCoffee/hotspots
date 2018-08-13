class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :business_id, null: false
      t.integer :user_id, null: false
      t.integer :stars, null: false
      t.string :text, null: false
      t.string :post_date, null: false

      t.timestamps
    end
    add_index :reviews, :business_id
    add_index :reviews, :user_id
  end
end
