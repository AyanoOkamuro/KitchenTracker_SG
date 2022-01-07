class Menu < ApplicationRecord
  belongs_to :kitchencar
  default_scope -> { order(created_at: :desc) }
  validates :name, presence: true
  validates :price, presence: true
  has_one_attached :image
end
