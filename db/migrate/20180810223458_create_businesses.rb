class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :stars
      t.string :price

      t.timestamps
    end
  end
end
