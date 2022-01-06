class Menu < ApplicationRecord
  belongs_to :kitchencar
  default_scope -> { order(created_at: :desc) }
end