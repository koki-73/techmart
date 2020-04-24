class CreateNices < ActiveRecord::Migration[5.2]
  def change
    create_table :nices do |t|
      t.references :item,                   null: false, foreign_key: true
      t.timestamps
    end
  end
end
