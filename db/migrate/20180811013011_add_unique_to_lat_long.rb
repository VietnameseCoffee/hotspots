class AddUniqueToLatLong < ActiveRecord::Migration[5.1]
  def change
    add_index :businesses, [:latitude, :longitude], unique: true
  end
end
