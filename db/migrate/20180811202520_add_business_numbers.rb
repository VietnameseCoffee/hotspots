class AddBusinessNumbers < ActiveRecord::Migration[5.1]
  def change
    add_column :businesses, :phone_number, :string
  end
end
