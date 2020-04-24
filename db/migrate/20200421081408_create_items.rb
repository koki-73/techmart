class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,                   null: false
      t.integer :price,                 null: false
      t.integer :status,                null: false
      t.string :brand_id,              foreign_key: true
      t.string :buyer_id,               foreign_key: true
      t.string :delivery_payer_id,      null: false
      t.references :category,           null: false, foreign_key: true
      t.references :user,               null: false, foreign_key: true
      t.string :item_image_id,             null: false
      t.string :size_id,                   null: false
      t.string :delivery_method,        null: false
      t.string :delivary_from_location, null: false
      t.text :item_explanation,         null: false
      t.integer :preparation_day,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
