class Item < ApplicationRecord
  # belongs_to user, foreign_key: 'user_id'
  belongs_to :user
  belongs_to :category

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :item_status
  belongs_to_active_hash :item_delivery_fee
  belongs_to_active_hash :item_delivery_method
  belongs_to_active_hash :item_prefecture
  belongs_to_active_hash :item_preparation_day
end

end
