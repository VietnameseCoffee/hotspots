class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :user_id, null: false
      t.integer :business_id, null: false

      t.timestamps
    end

    add_index :images, :user_id, unique: true
    add_index :images, :business_id, unique: true
  end
end
