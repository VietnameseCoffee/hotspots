class CreateHours < ActiveRecord::Migration[5.1]
  def change
    create_table :hours do |t|
      t.integer :business_id, null: false
      t.string :hours, null: false

      t.timestamps
    end
    add_index :hours, :business_id, unique: true
  end
end
