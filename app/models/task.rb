class Task < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to_active_hash :floor_category
  belongs_to_active_hash :room_category
  belongs_to_active_hash :item_category
  belongs_to_active_hash :mentenance_category
  # belongs_to_active_hash :description_category
  
  with_options presence: true do
    validates :floor
    validates :room
    validates :item
    validates :mentenance
    validates :deadline
  end
end
