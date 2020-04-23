class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,                       null: false
      t.integer :price,                     null: false
      t.enum :status,                       null: false
      t.references :brand,                  foreign_key: true
      t.references :buyer_id,               foreign_key: true
      t.references :delivery_fee,           null: false,  foreign_key: true
      t.references :category,               null: false, foreign_key: true
      t.references :user,                   null: false, foreign_key: true
      t.references :item_image,             null: false, foreign_key: true
      t.references :size,                   null: false, foreign_key: true
      t.references :delivery_method,        null: false, foreign_key: true
      t.references :ship_location,          null: false, foreign_key: true
      t.references :item_explanation,       null: false, foreign_key: true
      t.references :preparation_day,        null: false, foreign_key: true
      t.timestamps
    end
  end
end


