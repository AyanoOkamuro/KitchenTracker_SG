class Kitchencar < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many_attached :portraits
  has_many :microposts, dependent: :destroy
  has_many :menus, dependent: :destroy
  validates :name, presence: true
  validates :location, presence: true
end
