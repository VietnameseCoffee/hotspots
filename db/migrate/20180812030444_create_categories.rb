class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.integer :business_id, null: false
      t.string :category, null: false

      t.timestamps
    end
    add_index :categories, :business_id
    add_index :categories, [:business_id, :category], unique: true
  end
end
