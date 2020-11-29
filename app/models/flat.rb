class Flat < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings
  has_many :reviews, through: :bookings, dependent: :destroy
  validates :name, :price, :description, presence: true
end
