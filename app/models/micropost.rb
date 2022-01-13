class Micropost < ApplicationRecord
  belongs_to :kitchencar
  default_scope -> { order(created_at: :desc) }
  validates :kitchencar_id, presence:true
  validates :content, presence: true
  validates :latitude, presence: true
  has_many_attached :images
end
