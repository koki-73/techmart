class Item < ApplicationRecord
  belongs_to :category

  has_many :comments

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :item_status
  belongs_to_active_hash :item_delivery_fee
  belongs_to_active_hash :item_delivery_method
  belongs_to_active_hash :item_prefecture
  belongs_to_active_hash :item_preparation_day
end
