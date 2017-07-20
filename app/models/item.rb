class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true

  scope :size_x, -> (x) { where("sizeItem=?", x)}
  scope :only_user, -> { where(user_id: nil)}
  
end