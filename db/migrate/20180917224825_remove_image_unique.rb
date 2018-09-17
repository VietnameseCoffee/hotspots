class RemoveImageUnique < ActiveRecord::Migration[5.2]
  def change
    remove_index :images, :user_id
    remove_index :images, :business_id

    add_index :images, :user_id
    add_index :images, :business_id
  end
end
