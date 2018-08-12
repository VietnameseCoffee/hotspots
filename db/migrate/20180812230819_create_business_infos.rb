class CreateBusinessInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :business_infos do |t|
      t.integer :business_id, null: false
      t.string :details, null: false

      t.timestamps
    end
    add_index :business_infos, :business_id, unique: true
  end
end
