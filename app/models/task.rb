class Task < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to_active_hash :floor_category
  belongs_to_active_hash :room_category
  belongs_to_active_hash :item_category
  belongs_to_active_hash :mentenance_category

  
  with_options presence: true do
    validates :floor_id
    validates :room_id
    validates :item_id
    validates :mentenance_id
    validates :deadline
  end
end
