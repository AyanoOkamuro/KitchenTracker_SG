class Menu < ApplicationRecord
  belongs_to :kitchencar
  default_scope -> { order(created_at: :desc) }
  has_one_attached :image
end
